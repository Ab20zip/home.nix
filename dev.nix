/*
This program is free software. It comes without any warranty, to the extent permitted by applicable law.
You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License,
Version 2, as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
*/

{ pkgs, ... }: {
    home.packages = with pkgs; [
        cargo
        rustc
        bun
        nodejs
        gleam
        erlang
        nixd
        lazygit
        git
        podman
        godot_4
        wl-clipboard
        gleam
        erlang
        zig
        go
    ];
}
