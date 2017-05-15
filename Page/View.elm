module Page.View exposing (..)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Main.Model exposing (Model)

import Page.Msg as Page
import Shared.Msg as Shared

-- View

view : Model -> Html Page.Msg
view model =
  div []
    [ button [ onClick ( Page.SharedMsg Shared.SharedAction ) ] [ text "Shared action from page view" ]
    , button [ onClick ( Page.PageSpecificAction ) ] [ text "Page action from page view" ]
    ]
