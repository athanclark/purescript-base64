module Test.Main where

import Prelude
import Data.ArrayBuffer.Base64 (encodeBase64, decodeBase64)

import Effect (Effect)
import Effect.Class.Console (log)
import Data.Maybe (Maybe (..))
import Data.UInt (UInt)
import Data.ArrayBuffer.Types (Uint8, Uint8Array)
import Data.ArrayBuffer.Typed.Unsafe (AV (..))
import Test.QuickCheck (quickCheck)


main :: Effect Unit
main = do
  log "Checking serialization isomorphism"
  quickCheck serializeIso


serializeIso :: AV Uint8 UInt -> Boolean
serializeIso x'@(AV x) = (AV <$> decodeBase64 (encodeBase64 x)) == Just x'
