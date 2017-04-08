module Data.ArrayBuffer.Base64
  ( decodeBase64
  , encodeBase64
  ) where

import Data.ArrayBuffer.Types (Uint8Array)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)


foreign import encodeBase64 :: Uint8Array -> String

foreign import decodeBase64Impl :: String -> Nullable Uint8Array


decodeBase64 :: String -> Maybe Uint8Array
decodeBase64 s = toMaybe (decodeBase64Impl s)
