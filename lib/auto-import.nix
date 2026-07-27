{ lib }:

dir: exclude:
let
  inherit (builtins) filter isList elem;
  inherit (lib.filesystem) listFilesRecursive;
  inherit (lib.strings) hasSuffix;
  excludes = if isList exclude then exclude else [ exclude ];
in
filter (hasSuffix ".nix") (map toString (filter (p: !(elem p excludes)) (listFilesRecursive dir)))
