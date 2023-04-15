{ pkgs, ... }:

{
  # https://github.com/nix-community/home-manager/pull/2408
  environment.pathsToLink = [ "/share/fish" ];

  users.users.mitchellh = {
    isNormalUser = true;
    home = "/home/mitchellh";
    extraGroups = [ "docker" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "$6$p5nPhz3G6k$6yCK0m3Oglcj4ZkUXwbjrG403LBZkfNwlhgrQAqOospGJXJZ27dI84CbIYBNsTgsoH650C1EBsbCKesSVPSpB1";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGbTIKIPtrymhvtTvqbU07/e7gyFJqNS4S0xlfrZLOaY mitchellh"
    ];
  };

  users.users.peter = {
    isNormalUser = true;
    home = "/home/peter";
    extraGroups = [ "docker" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "$6$DR1c7loK5.7Nz$y311HjceR1Z83JkQXNy5ZoOY2eTJlHZrkb.8nbCKc0AzfYzobNS1W5SObiGO2dp1QUm/bki.mj4DYjj7p/RLj1";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGYb1/ylreTAI15R4i2Y15W+1G4JPExfX0suW+tn/3OJ peter"
    ];
  };

  nixpkgs.overlays = import ../../lib/overlays.nix ++ [
    (import ./vim.nix)
  ];
}
