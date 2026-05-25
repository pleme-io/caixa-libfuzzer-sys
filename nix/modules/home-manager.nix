# nix/modules/home-manager.nix — auto-generated from libfuzzer-sys.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.libfuzzer-sys; in {
  options.programs.libfuzzer-sys = {
    enable = lib.mkEnableOption "libfuzzer-sys";
    package = lib.mkOption { type = lib.types.package; default = pkgs.libfuzzer-sys or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
