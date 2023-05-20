module Main exposing (main)

import Html exposing (Attribute, Html, div, figcaption, figure, img, text)
import Html.Attributes exposing (class, src)
import VitePluginHelper



-- MAIN


main =
    div
        [ class "min-h-screen flex flex-col items-center gap-3 p-5 bg-[#111111] font-custom" ]
        [ div [ class "flex justify-between w-full pt-4 px-10" ]
            [ div [ class "text-white text-3xl font-bold" ] [ text "Anthony Stanislaus" ]
            , figure [ class "flex justify-end items-center gap-3" ]
                [ figcaption [ class "text-slate-300" ] [ text "Built with Elm" ]
                , img
                    [ src <| VitePluginHelper.asset "/src/assets/logo.png"
                    , class "w-11"
                    ]
                    []
                ]
            ]
        , div [ class "flex grow gap-3 w-full text-slate-300 text-5xl" ]
            [ div [ class "shrink-0 w-40" ] []
            , div [ class "flex justify-center items-center grow border-2 border-orange-500" ] [ text "Under Construction..." ]
            , div [ class "shrink-0 w-1/4 border-2 border-teal-500" ] []
            ]
        , div [ class "flex justify-start items-center h-16 w-full pl-11 text-slate-300 text-lg" ]
            [ text "visitor count: ..." ]
        ]
