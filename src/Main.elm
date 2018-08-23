import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main = Browser.sandbox { init = 0, update = updater, view = viewer}

type Msg = Increment | Decrement | Zero

updater msg model =
  case msg of
    Increment -> model + 2
    Decrement -> model - 1
    Zero -> 0


viewer model =
  div []
    [ div [] [ text (String.fromInt model) ]
    , button [ onClick Decrement ] [ text "min" ]
    , button [ onClick Zero] [ text "0"]
    , button [ onClick Increment ] [ text "plus" ]
    ]
