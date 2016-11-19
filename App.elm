module App exposing (..)

import Html exposing (Html, div, text, program)

-- Model

type alias Model =
  String

init : ( Model, Cmd Msg )
init =
  ( "hello world!", Cmd.none )

-- Messages

type Msg =
  NoOp

-- View

view : Model -> Html Msg
view model =
  div []
    [ text model ]

-- Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp ->
      ( model, Cmd.none )

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