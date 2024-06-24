/*
This program is free software. It comes without any warranty, to the extent permitted by applicable law.
You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License,
Version 2, as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
*/

{ pkgs, ... }: {
    imports = [ ./stylix.nix ./dev.nix ./sh.nix ./vscode/vscodium.nix ./nvim/nvim.nix ];
    nixpkgs.config.allowUnfree = true;

    home.username = "aarav";
    home.homeDirectory = "/home/aarav";

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        kdePackages.kcalc
        kdePackages.kclock
        kdePackages.plasma-systemmonitor
        kdePackages.akregator
        qbittorrent
        spotube
        inkscape
        gimp
        blender
        vlc
        prismlauncher
        heroic
        vesktop
        thunderbird
        tlrc
        gh
        nixfmt-rfc-style
        unzip
        ripgrep
        p7zip
        freetube
        spotube
        mullvad-browser
        audacious
        audacious-plugins
        ollama
    ];

    home.file = {
        ".config/zellij".source = ./config/zellij;
    };

    home.sessionVariables = {
        EDITOR = "nvim";
    };

    programs.home-manager.enable = true;
}
