module Main exposing (main)

import Model exposing (Model, initialModel)
import Msg exposing (..)
import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)

import Msg exposing (..)

import Shared.Update as Shared
import Shared.Msg as Shared

import Page.Update as Page
import Page.View as Page

import Debug

-- Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    SharedMsg msg ->
      Shared.update msg model

    PageMsg msg ->
      Page.update msg model

-- View

view : Model -> Html Msg
view model =
  div []
  [ button [ onClick ( SharedMsg Shared.SharedAction ) ] [ text "Shared action from main view" ]
  , Html.map PageMsg ( Page.view model )
  ]


-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

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
