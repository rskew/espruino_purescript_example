{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-22.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in rec {
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.spago
            pkgs.purescript
            pkgs.nodejs
            pkgs.esptool
            pkgs.screen
            pkgs.wget
          ];
        };
      });
}
