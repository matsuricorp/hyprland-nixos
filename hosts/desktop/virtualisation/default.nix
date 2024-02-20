{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker.enable = true;
  };

  users.groups.docker.members = [ "linus" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
