module Main.Msg exposing (..)

import Shared.Msg as Shared
import Page.Msg as Page

type Msg
  = SharedMsg Shared.Msg
  | PageMsg Page.Msg



