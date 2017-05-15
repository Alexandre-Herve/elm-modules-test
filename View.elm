module View exposing (view)

import Model exposing (Model)
import Msg exposing (..)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)

import Shared.Msg as Shared
import Page.View as Page

-- View

view : Model -> Html Msg
view model =
  div []
  [ button [ onClick ( SharedMsg Shared.SharedAction ) ] [ text "Shared action from main view" ]
  , Html.map PageMsg ( Page.view model )
  ]
