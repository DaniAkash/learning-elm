module Counter exposing (..)

import Html exposing (Html, button, div, text, program)
import Html.Events exposing (onClick)

-- Model

type alias Model =
  Int

init: (Model, Cmd Msg)
init =
  (0, Cmd.none)

-- Messages

type Msg =
  Increment Int

-- View

view : Model -> Html Msg
view model =
  div []
    [button [onClick (Increment 2)] [text "+"]
    , text (toString model)
    ]

-- Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Increment howMuch ->
      ( model + howMuch, Cmd.none )

-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

-- Main

main : Program Never Model Msg
main =
  program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }
