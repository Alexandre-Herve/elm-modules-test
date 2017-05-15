module Subscription exposing (subscriptions)

import Model exposing (Model)
import Msg exposing (..)

-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none
