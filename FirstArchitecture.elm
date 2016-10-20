module Main exposing (main)

import Html.App exposing (beginnerProgram)
import Html exposing (text, div, img, button)
import Html.Attributes exposing (class, id, src)
import Html.Events exposing (onClick)


main =
    beginnerProgram { model = 0, update = update, view = view }



-- MODEL


type alias Model =
    Int



-- UPDATE


type Msg
    = Increment
    | Decrement


update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view model =
    div [ id "main" ]
        [ everyThingThatMatters
        , arrow
        , elm
        , arrow
        , yourDreamAppearance model
        ]


everyThingThatMatters =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , button [ onClick Increment ] [ text "+" ]
        ]


yourDreamAppearance model =
    div [] [ text (toString model) ]


elm =
    div [] [ img [ src "elm-logo.png" ] [] ]


arrow =
    div [ class "arrow" ] [ text "=>" ]
