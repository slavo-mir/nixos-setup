function __bootstrap-flake
    if test -f flake.nix
        echo "[bootstrap] flake.nix exists, skipping"
        return
    end

    set -l name (basename (pwd))

    printf '%s\n' \
'{
  description = "'$name'";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
          ];
        };
      });
}' > flake.nix

    echo "[bootstrap] flake.nix created"
end
