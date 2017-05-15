module Page.Update exposing (..)

import Model exposing (Model)
import Msg exposing (..)

import Shared.Update as Shared
import Page.Msg as Page

update : Page.Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Page.SharedMsg sharedMsg ->
      Shared.update sharedMsg model

    Page.PageSpecificAction ->
      ( model, Cmd.none )
