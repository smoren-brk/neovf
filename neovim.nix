{ pkgs, ... }:
{
  imports = [
    ./config/bind.nix
    ./config/colors.nix
    ./config/lsp.nix
    ./config/options.nix
    ./config/plugins.nix
  ];

  vim = {
    viAlias = false;
    vimAlias = true;
    extraPackages = with pkgs; [
      nixfmt
      ripgrep
      tree-sitter
    ];

    clipboard = {
      enable = true;
      registers = "unnamedplus";
      providers.wl-copy = {
        enable = true;
        package = pkgs.wl-clipboard-rs;
      };
    };
  };
}
