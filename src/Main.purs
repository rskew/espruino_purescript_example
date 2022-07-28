module Main where

import Prelude

import Data.Time.Duration (Milliseconds(..))
import Effect.Aff (delay, launchAff_)
import Effect (Effect)
import Effect.Class (liftEffect)
import Effect.Console as Console

foreign import ledOn :: Effect Unit
foreign import ledOff :: Effect Unit

main :: Effect Unit
main = launchAff_ do
  liftEffect $ Console.log "Hello from Purescript"
  liftEffect $ Console.log "Pin on"
  liftEffect $ ledOn
  delay $ Milliseconds 2000.0
  liftEffect $ Console.log "Pin off"
  liftEffect $ ledOff
