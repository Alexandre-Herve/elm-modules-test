module Main exposing (main)

import Html exposing (Html)

import Main.Model exposing (Model, initialModel)
import Main.Msg exposing (..)
import Main.Subscription exposing (subscriptions)
import Main.Update exposing (update)
import Main.View exposing (view)

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
