module Update exposing (update)

import Model exposing (Model)
import Msg exposing (..)

import Shared.Update as Shared
import Shared.Msg as Shared

import Page.Update as Page
import Page.View as Page

-- Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    SharedMsg msg ->
      Shared.update msg model

    PageMsg msg ->
      Page.update msg model

