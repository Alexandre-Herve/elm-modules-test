module View exposing (view)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Model exposing (Model)
import Msg exposing (..)
import Page.View as Page
import Shared.Msg as Shared

-- View

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick ( SharedMsg Shared.SharedAction ) ] [ text "Shared action from main view" ]
    , Html.map PageMsg ( Page.view model )
    ]
