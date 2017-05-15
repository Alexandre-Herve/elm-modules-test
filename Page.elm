module Page exposing (..)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Model exposing (Model)

import Shared.Msg as Shared
import Page.Msg as Page

import Msg exposing (Msg)

-- View

view : Model -> Html Page.Msg
view model =
  div []
    [ button [ onClick ( Page.SharedMsg Shared.SharedAction ) ] [ text "Shared action from page view" ]
    , button [ onClick ( Page.PageSpecificAction ) ] [ text "Page action from page view" ]
    ]
