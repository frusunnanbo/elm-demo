module Main exposing (main)

import Html exposing (text, div, img)
import Html.Attributes exposing (class, id, src)


main =
    div [ id "main" ]
        [ div [] [ text "Every Thing that Matters" ]
        , div [ class "arrow" ] [ text "=>" ]
        , div [] [ img [ src "elm-logo.png" ] [] ]
        , div [ class "arrow" ] [ text "=>" ]
        , div [] [ text "Your Dream Appearance" ]
        ]
