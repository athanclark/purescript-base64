module Data.ArrayBuffer.Base64 where

import Data.ArrayBuffer.Types (Uint8Array)

foreign import encodeBase64 :: Uint8Array -> String

foreign import decodeBase64 :: String -> Uint8Array
