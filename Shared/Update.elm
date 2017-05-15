module Shared.Update exposing (..)

import Model exposing (Model)
import Msg exposing (..)

import Shared.Msg as Shared

update : Shared.Msg -> Model -> ( Model, Cmd Msg )
update sharedMsg model =
  case sharedMsg of
    Shared.SharedAction ->
      ( model, Cmd.none )
