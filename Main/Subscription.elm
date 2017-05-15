module Main.Subscription exposing (subscriptions)

import Main.Model exposing (Model)
import Main.Msg exposing (..)

-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none
