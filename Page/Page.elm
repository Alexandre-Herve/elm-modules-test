module Msg exposing (..)

import Shared

type Msg
  = PageSpecificAction
  | SharedMsg Shared.Msg
