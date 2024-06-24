/*
This program is free software. It comes without any warranty, to the extent permitted by applicable law.
You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License,
Version 2, as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
*/

{ pkgs, ... }: {
    programs.vscode = {
    enableUpdateCheck = false;
        extensions = with pkgs.vscode-extensions; [
            catppuccin.catppuccin-vsc
            timonwong.shellcheck
            eamodio.gitlens
        ];

        userSettings = builtins.fromJSON (builtins.readFile ./settings.json);
    };
}
