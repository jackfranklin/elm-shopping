module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Types exposing (..)


render : Model -> Html Msg
render model =
    div [ class "container" ]
        [ renderTabs model
        , div [ class "tab-content" ] [ renderBody model ]
        ]


renderTabs : Model -> Html Msg
renderTabs model =
    ul [ class "navigation" ]
        (List.indexedMap renderTab model.tabs)


renderTab : Int -> String -> Html Msg
renderTab tabIndex tabName =
    li []
        [ a [ onClick (ChangeTab tabIndex) ]
            [ text tabName
            ]
        ]


renderBody : Model -> Html Msg
renderBody model =
    case model.currentTabIndex of
        1 ->
            renderAdd model

        _ ->
            renderList model


renderAdd : Model -> Html Msg
renderAdd model =
    div [] [ text "You are on the add screen" ]


renderList : Model -> Html Msg
renderList model =
    div [] [ text "You are on the list screen" ]
