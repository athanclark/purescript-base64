{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-base64"
, dependencies =
  [ "arraybuffer-types"
  , "nullable"
  , "prelude"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, license = "BSD-3-Clause"
, repository = "https://github.com/athanclark/purescript-base64.git"
}
