module Types exposing (Model, Msg(..))


type alias Model =
    { tabs : List String
    , currentTabIndex : Int
    }


type Msg
    = NoOp
    | ChangeTab Int
