{
  vim = {
    lsp = {
      enable = true;
      mappings = {
        hover = "<leader>gd";
        renameSymbol = "<leader>rn";
      };
    };

    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
    };

    diagnostics = {
      enable = true;
      config = {
        signs = false;
        virtual_text = {
          prefix = "●";
          spacing = 2;
        };
        float = {
          focusable = false;
          style = "minimal";
          border = "rounded";
          source = "if_many";
          header = "";
          prefix = "";
        };
      };
    };
  };
}
