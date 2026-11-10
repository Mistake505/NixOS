{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # [coding]
    nixfmt
    statix
    nixd
    nil
    # luau
    # luau-lsp

    zed-editor
  ];
}
