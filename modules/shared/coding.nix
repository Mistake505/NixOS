{ pkgs, ... }:

{
  programs = {

    neovim = {
      enable = true;
      defaultEditor = true;
    };

    git.enable = true;
    lazygit.enable = true;
  };

  environment.systemPackages = with pkgs; [
    # [coding]
    nixfmt
    statix
    nixd
    nil
    # luau
    # luau-lsp

    zed-editor

    # Dependancies LazyVim + Yazi
    luaPackages.tree-sitter-cli
    clang
    curl
    fzf
    ripgrep
    fd
    file
    ffmpeg
    _7zz-rar
    jq
    poppler
    resvg
    imagemagick
    wl-clipboard
  ];
}
