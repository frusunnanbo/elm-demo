module Main exposing (main)

import Html exposing (text, div, img)
import Html.Attributes exposing (class, id, src)


main =
    div [ id "main" ]
        [ everyThingThatMatters
        , arrow
        , elm
        , arrow
        , yourDreamAppearance
        ]


everyThingThatMatters =
    div [] [ text "Every Thing that Matters" ]


yourDreamAppearance =
    div [] [ text "Your Dream Appearance" ]


elm =
    div [] [ img [ src "elm-logo.png" ] [] ]


arrow =
    div [ class "arrow" ] [ text "=>" ]
