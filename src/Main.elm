module Main exposing (main)

import Html exposing (Attribute, Html, div, figcaption, figure, img, text)
import Html.Attributes exposing (class, src)
import VitePluginHelper



-- MAIN


main =
    div
        [ class "min-h-screen flex flex-col items-center gap-3 p-5 bg-[#111111] font-custom" ]
        [ div [ class "flex justify-between w-full pt-4 px-10" ]
            [ div [ class "text-white text-4xl font-bold" ] [ text "Anthony Stanislaus" ]
            , figure [ class "flex justify-end items-center gap-3" ]
                [ figcaption [ class "text-slate-300" ] [ text "Built with Elm" ]
                , img
                    [ src <| VitePluginHelper.asset "/src/assets/logo.png"
                    , class "w-11"
                    ]
                    []
                ]
            ]
        , div [ class "grow w-full border-2 border-orange-600" ]
            []
        ]
