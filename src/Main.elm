module Main exposing (Model, Msg, main)

import Browser
import Html exposing (Html, div, figcaption, figure, img, text)
import Html.Attributes exposing (class, src)
import Http exposing (Error(..))
import Json.Decode exposing (int)
import VitePluginHelper



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- MODEL


init : () -> ( Model, Cmd Msg )
init _ =
    ( Loading
    , Http.get
        { url = "https://webfolio-gateway-dev-c3yme5cg.ue.gateway.dev"
        , expect = Http.expectJson HttpResponse int
        }
    )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg _ =
    case msg of
        HttpResponse result ->
            case result of
                Ok count ->
                    ( Success count, Cmd.none )

                Err error ->
                    ( Failure <| httpError error, Cmd.none )


httpError : Error -> String
httpError error =
    case error of
        BadUrl url ->
            "Bad URL: " ++ url

        Http.Timeout ->
            "Request timeout"

        Http.NetworkError ->
            "Network error"

        Http.BadStatus status ->
            "Bad status: " ++ String.fromInt status

        Http.BadBody _ ->
            "Bad body"



-- VIEW


view : Model -> Html Msg
view model =
    case model of
        Failure err ->
            baseHtml err

        Loading ->
            baseHtml "Initializing instance..."

        Success count ->
            baseHtml <| String.fromInt count


baseHtml : String -> Html Msg
baseHtml countState =
    div
        [ class "min-h-screen flex flex-col items-center gap-3 p-5 bg-[#111111] font-custom" ]
        [ div
            [ class "flex justify-between w-full pt-4 px-10" ]
            [ div
                [ class "text-white text-3xl font-bold" ]
                [ text "Anthony Stanislaus" ]
            , figure
                [ class "flex justify-end items-center gap-3" ]
                [ figcaption [ class "text-slate-300" ] [ text "Built with Elm" ]
                , img
                    [ src <| VitePluginHelper.asset "/src/assets/logo.png"
                    , class "w-11"
                    ]
                    []
                ]
            ]
        , div
            [ class "flex grow gap-3 w-full text-slate-300 text-5xl" ]
            [ div [ class "shrink w-40" ] []
            , div [ class "flex justify-center items-center grow shrink-0 border-2 border-orange-500" ]
                [ text "Under Construction..." ]
            , div [ class "shrink w-1/4 border-2 border-teal-500" ] []
            ]
        , div [ class "counter flex justify-start items-center h-16 w-full pl-11 text-slate-300 text-lg" ]
            [ text <| "visitor count: " ++ countState ]
        ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- TYPES


type Model
    = Failure String
    | Loading
    | Success VisitorCount


type Msg
    = HttpResponse (Result Error VisitorCount)


type alias VisitorCount =
    Int
