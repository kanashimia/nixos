{ conf-utils, pkgs, ... }:

{
  home-manager.users.kana = { pkgs, lib, ... }: {
    imports = conf-utils.listFiles ../profiles;
  };

  programs.fish.enable = true;

  users.users.kana = {
    uid = 1001;
    description = "Kanashimia";
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
    ];
    shell = pkgs.fish;
  };
}
