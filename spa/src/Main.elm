module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Json.Encode as Encode
import Url exposing (Url)


type alias Flags =
    Encode.Value


main : Program Flags Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = LinkClicked
        , onUrlChange = UrlChanged
        }


init : Flags -> Url -> Nav.Key -> ( Model, Cmd Msg )
init _ _ _ =
    ( (), Cmd.none )



-- MODEL


type alias Model =
    ()



-- UPDATE


type Msg
    = LinkClicked Browser.UrlRequest
    | UrlChanged Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LinkClicked _ ->
            ( model, Cmd.none )

        UrlChanged _ ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Browser.Document Msg
view _ =
    { title = "Elm SPA Boilerplate"
    , body =
        [ main_ []
            [ h1 [] [ text "It works!" ]
            , p []
                [ text
                    """
                    Also, try open it with your mobile device 
                    and add it to the home screen.
                    """
                ]
            ]
        ]
    }
