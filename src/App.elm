module App exposing (..)

import View
import Html exposing (Html)
import Types exposing (..)


initialModel : Model
initialModel =
    { tabs = [ "List", "Add" ]
    , currentTabIndex = 0
    }


init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        ChangeTab x ->
            ( { model | currentTabIndex = x }, Cmd.none )


view : Model -> Html Msg
view model =
    View.render model


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
