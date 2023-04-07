# SPDX-FileCopyrightText: Copyright (c) 2022 by Rivos Inc.
# SPDX-FileCopyrightText: Copyright (c) 2003-2022 Eelco Dolstra and the Nixpkgs/NixOS contributors
# Licensed under the MIT License, see LICENSE for details.
# SPDX-License-Identifier: MIT
{
  description = "binutils (rivos)";

  inputs = {
    nixpkgs.url = "github:rivosinc/nixpkgs/rivos/nixos-22.11?allRefs=1";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    lib = nixpkgs.lib;
    # Match the version from "m4_define([BFD_VERSION], [2.39.0])"
    bfdVersionFromFile = builtins.head (builtins.match "m4_define\\(\\[BFD_VERSION], \\[([0-9.]+)]\\)" (nixpkgs.lib.fileContents ./bfd/version.m4));
    # Grab only the major, minor, patch from version.in. "13.0.50.DATE-git"
    gdbVersionFromFile = lib.concatStringsSep "." (lib.take 3 (lib.splitString "." (nixpkgs.lib.fileContents ./gdb/version.in)));
    bfdVersion = "${bfdVersionFromFile}-g${self.shortRev or "dirty"}";
    gdbVersion = "${gdbVersionFromFile}-g${self.shortRev or "dirty"}";

    # System types to support.
    supportedSystems = [
      "x86_64-linux"
      "aarch64-linux"
      "riscv64-linux"
    ];

    # Helper function to generate an attrset '{ x86_64-linux = f "x86_64-linux"; ... }'.
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

    # Nixpkgs instantiated for supported system types.
    nixpkgsFor = forAllSystems (system:
      import nixpkgs {
        inherit system;
        overlays = [self.overlays.default];
      });
  in rec {
    overlays.default = final: prev: rec {
      binutils-unwrapped-rivos = final.callPackage ./rivos/nix/binutils {
        version = bfdVersion;
        src = self;
        autoreconfHook = final.buildPackages.autoreconfHook269;
      };
      binutils-unwrapped-all-targets-rivos = final.callPackage ./rivos/nix/binutils {
        version = bfdVersion;
        src = self;
        autoreconfHook = final.buildPackages.autoreconfHook269;
        withAllTargets = true;
      };
      libbfd-rivos = final.callPackage ./rivos/nix/binutils/libbfd.nix {
        binutils-unwrapped-all-targets = binutils-unwrapped-all-targets-rivos;
      };
      libopcodes-rivos = final.callPackage ./rivos/nix/binutils/libopcodes.nix {
        binutils-unwrapped-all-targets = binutils-unwrapped-all-targets-rivos;
      };
      gdb-rivos = final.callPackage ./rivos/nix/gdb {
        src = self;
        version = gdbVersion;
        guile = null;
        readline = final.readline81;
      };
    };

    overlays.cross = final: prev: let
      flakePkgs = overlays.default final prev;
    in {
      binutils-unwrapped =
        if (final.stdenv.targetPlatform != final.stdenv.buildPlatform)
        then flakePkgs.binutils-unwrapped-rivos
        else prev.binutils-unwrapped;
      binutils-unwrapped-all-targets =
        if (final.stdenv.targetPlatform != final.stdenv.buildPlatform)
        then flakePkgs.binutils-unwrapped-all-targets-rivos
        else prev.binutils-unwrapped-all-targets;
      libbfd =
        if (final.stdenv.targetPlatform != final.stdenv.buildPlatform)
        then flakePkgs.libbfd-rivos
        else prev.libbfd;
      libopcodes =
        if (final.stdenv.targetPlatform != final.stdenv.buildPlatform)
        then flakePkgs.libopcodes-rivos
        else prev.libopcodes;
      gdb =
        if (final.stdenv.targetPlatform != final.stdenv.buildPlatform)
        then flakePkgs.gdb-rivos
        else prev.gdb;
    };

    overlays.use-as-default-binutils = final: prev: {
      binutils-unwrapped = prev.binutils-unwrapped-rivos;
      binutils-unwrapped-all-targets = prev.binutils-unwrapped-all-targets-rivos;
      libbfd = prev.libbfd-rivos;
      libopcodes = prev.libopcodes-rivos;
      gdb = prev.gdb-rivos;
    };

    # Provide some binary packages for selected system types.
    packages = forAllSystems (system: let
      binutils-unwrapped-rivos = (nixpkgsFor.${system}).binutils-unwrapped-rivos;
      binutils-unwrapped-all-targets-rivos = (nixpkgsFor.${system}).binutils-unwrapped-all-targets-rivos;
      libbfd-rivos = (nixpkgsFor.${system}).libbfd-rivos;
      libopcodes-rivos = (nixpkgsFor.${system}).libopcodes-rivos;
      gdb-rivos = (nixpkgsFor.${system}).gdb-rivos;
      ci = (nixpkgsFor.${system}).linkFarmFromDrvs "binutils-gdb-ci" [
        binutils-unwrapped-all-targets-rivos
        libbfd-rivos
        libopcodes-rivos
        gdb-rivos
      ];
    in {
      inherit binutils-unwrapped-rivos;
      inherit binutils-unwrapped-all-targets-rivos;
      inherit libbfd-rivos;
      inherit libopcodes-rivos;
      inherit gdb-rivos;
      inherit ci;
      default = binutils-unwrapped-all-targets-rivos;
    });
    # For now, just check that everything builds.
    checks = forAllSystems (system: {
      default = packages.${system}.ci;
    });
    formatter = forAllSystems (system: nixpkgsFor.${system}.alejandra);
  };
}
