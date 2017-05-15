module Main exposing (main)

import Html exposing (Html)

import Model exposing (Model, initialModel)
import Msg exposing (..)
import Subscription exposing (subscriptions)
import Update exposing (update)
import View exposing (view)

-- Main

main : Program Never Model Msg
main =
  Html.program
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }

init : ( Model, Cmd Msg )
init =
  ( initialModel, Cmd.none )
