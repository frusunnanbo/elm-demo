module Main exposing (main)

import Html.App exposing (beginnerProgram)
import Html exposing (text, div, img, button)
import Html.Attributes exposing (class, id, src)
import Html.Events exposing (onClick)
import Svg exposing (svg, circle, text')
import Svg.Attributes exposing (x, y, cx, cy, r, fill, fontSize, textAnchor, alignmentBaseline, width, height)


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
    div [ class "dream" ] [ animatedCircle model ]


animatedCircle model =
    svg [ width "200", height "200" ]
        [ circle [ cx "100", cy "100", r (toString model), fill elmOrange ] []
        , text'
            [ x "100"
            , y "100"
            , fontSize <| (toString model) ++ "px"
            , fill elmDarkblue
            , textAnchor "middle"
            , alignmentBaseline "middle"
            ]
            [ text <| toString model ]
        ]


elm =
    div [] [ img [ src "elm-logo.png" ] [] ]


arrow =
    div [ class "arrow" ] [ text "=>" ]



----- Colors


elmDarkblue =
    "#474E63"


elmGreen =
    "#7CD12A"


elmLightblue =
    "#50A5C0"


elmOrange =
    "#E89409"
