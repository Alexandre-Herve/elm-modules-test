module Page.Msg exposing (..)

import Shared.Msg as Shared

type Msg
  = PageSpecificAction
  | SharedMsg Shared.Msg
