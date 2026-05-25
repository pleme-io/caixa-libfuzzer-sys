# nix/modules/nixos.nix — auto-generated from libfuzzer-sys.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.libfuzzer-sys;
in {
  options.services.libfuzzer-sys = {
    enable = lib.mkEnableOption "libfuzzer-sys";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.libfuzzer-sys or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
