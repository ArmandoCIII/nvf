{lib, ...}: let
  inherit (lib.nvim.languages) mkEnable;
in {
  imports = [
    ./bash
    ./dart
    ./elixir
    ./tidal

    ./clang.nix
    ./css.nix
    ./go.nix
    ./html.nix
    ./java.nix
    ./lua.nix
    ./markdown.nix
    ./nim.nix
    ./nix.nix
    ./php.nix
    ./python.nix
    ./rust.nix
    ./sql.nix
    ./svelte.nix
    ./tailwind.nix
    ./terraform.nix
    ./ts.nix
    ./typst.nix
    ./zig.nix
  ];

  options.vim.languages = {
    enableLSP = mkEnable "LSP";
    enableDAP = mkEnable "Debug Adapter";
    enableTreesitter = mkEnable "Treesitter";
    enableFormat = mkEnable "Formatting";
    enableExtraDiagnostics = mkEnable "extra diagnostics";
  };
}
