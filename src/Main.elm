module Main exposing (main)

import Html exposing (Attribute, Html, div)
import Html.Attributes as HA exposing (class, id)
import Svg exposing (defs, g, linearGradient, path, stop, svg)
import Svg.Attributes as SA exposing (d, fill, fillRule, gradientUnits, offset, stopColor, strokeLinecap, viewBox, x1, x2, y1, y2)
import VitePluginHelper



-- MAIN


main =
    div
        [ class "min-h-screen flex flex-col justify-center items-center bg-[#121212] border-2 border-gray-800" ]
        [ svg [ viewBox "-200 -200 900 700", HA.attribute "xmlns" "http://www.w3.org/2000/svg" ]
            [ defs []
                [ linearGradient
                    [ id "paint_gradient"
                    , x1 "30"
                    , y1 "100"
                    , x2 "650"
                    , y2 "300"
                    , gradientUnits "userSpaceOnUse"
                    ]
                    [ stop [ stopColor "#B6F1E7FF" ] []
                    , stop [ offset "0.053542", stopColor "#6EC087FF" ] []
                    , stop [ offset "0.363542", stopColor "#DAD862FF" ] []
                    , stop [ offset "0.678761", stopColor "#FFBF69" ] []
                    , stop [ offset "1", stopColor "#FF9F1C" ] []
                    ]
                ]
            , g
                [ SA.class "stroke-none fill-orange-500"
                , strokeLinecap "round"
                , fillRule "nonzero"
                ]
                [ path [ fill "url(#paint_gradient)", HA.attribute "vector-effects" "non-scaling-stroke", d tracedPath ] []
                ]
            , g
                [ SA.class "stroke-slate-50 fill-none stroke-[0.25mm]"
                , strokeLinecap "round"
                , fillRule "evenodd"
                ]
                [ path [ HA.attribute "vector-effects" "non-scaling-stroke", d tracedPath ] [] ]
            ]
        ]


tracedPath =
    """M 356.006 79.248 L 325.439 79.248 L 325.439 62.403 L 333.252 62.403 L 333.252 18.36 L 325.439 18.36 L 325.439 1.514 L 365.039 1.514 L 381.494 43.994 L 398.486 1.514 L 434.277 1.514 L 434.277 18.36 L 426.465 18.36 L 426.465 62.403 L 434.277 62.403 L 434.277 79.248 L 395.068 79.248 L 395.068 62.403 L 401.904 62.403 L 401.904 30.078 L 382.471 79.248 L 368.604 79.248 L 349.17 30.078 L 349.17 62.403 L 356.006 62.403 L 356.006 79.248 Z M 154.688 79.248 L 85.547 79.248 L 85.547 62.403 L 93.359 62.403 L 93.359 18.36 L 85.547 18.36 L 85.547 1.514 L 154.688 1.514 L 154.688 32.422 L 138.574 32.422 L 136.865 18.116 L 118.164 18.116 L 118.164 31.299 L 131.348 31.299 L 131.348 47.901 L 118.164 47.901 L 118.164 62.647 L 136.865 62.647 L 138.574 46.192 L 154.688 46.192 L 154.688 79.248 Z M 509.668 79.248 L 440.527 79.248 L 440.527 62.403 L 448.34 62.403 L 448.34 18.36 L 440.527 18.36 L 440.527 1.514 L 509.668 1.514 L 509.668 32.422 L 493.555 32.422 L 491.846 18.116 L 473.145 18.116 L 473.145 31.299 L 486.328 31.299 L 486.328 47.901 L 473.145 47.901 L 473.145 62.647 L 491.846 62.647 L 493.555 46.192 L 509.668 46.192 L 509.668 79.248 Z M 179.834 71.582 L 177.344 79.248 L 163.916 79.248 L 163.916 53.076 L 182.129 53.076 A 14.306 14.306 0 0 0 187.793 62.378 A 17.188 17.188 0 0 0 194.982 65.566 A 24.163 24.163 0 0 0 199.756 66.016 A 15.896 15.896 0 0 0 202.051 65.861 Q 204.382 65.52 205.859 64.429 A 5.042 5.042 0 0 0 207.97 60.777 A 6.642 6.642 0 0 0 208.008 60.059 A 6.054 6.054 0 0 0 207.685 58.033 Q 207.129 56.458 205.615 55.469 Q 203.223 53.907 199.268 53.028 Q 195.313 52.149 190.576 51.319 A 77.066 77.066 0 0 1 181.104 49.024 Q 176.367 47.559 172.412 44.727 A 19.467 19.467 0 0 1 167.186 39.065 A 23.923 23.923 0 0 1 166.064 37.036 Q 163.672 32.178 163.672 24.561 A 25.913 25.913 0 0 1 164.599 17.501 A 21.58 21.58 0 0 1 167.212 11.67 A 22.557 22.557 0 0 1 174.823 4.427 A 28.357 28.357 0 0 1 177.393 3.076 A 31.7 31.7 0 0 1 184.942 0.722 Q 188.817 0 193.311 0 A 47.806 47.806 0 0 1 199.152 0.337 Q 202.136 0.705 204.66 1.475 A 24.447 24.447 0 0 1 207.178 2.393 A 23.969 23.969 0 0 1 213.732 6.512 A 21.934 21.934 0 0 1 216.26 9.18 L 218.75 1.514 L 232.178 1.514 L 232.178 26.709 L 213.574 26.709 A 17.566 17.566 0 0 0 211.798 22.139 A 13.985 13.985 0 0 0 207.935 17.774 A 15.949 15.949 0 0 0 198.491 14.652 A 19.611 19.611 0 0 0 198.145 14.649 Q 194.189 14.649 191.846 16.138 A 5.027 5.027 0 0 0 190.213 17.757 Q 189.614 18.737 189.52 20.017 A 6.659 6.659 0 0 0 189.502 20.508 A 4.75 4.75 0 0 0 189.92 22.531 Q 190.393 23.55 191.401 24.286 A 6.171 6.171 0 0 0 191.895 24.61 Q 193.718 25.689 196.448 26.456 A 33.528 33.528 0 0 0 198.242 26.905 A 309.833 309.833 0 0 0 202.393 27.796 A 402.664 402.664 0 0 0 206.934 28.711 A 72.907 72.907 0 0 1 216.406 31.25 Q 221.143 32.862 225.098 35.767 A 20.291 20.291 0 0 1 230.493 41.761 A 24.491 24.491 0 0 1 231.445 43.506 A 21.07 21.07 0 0 1 233.081 48.231 Q 233.601 50.538 233.764 53.233 A 41.994 41.994 0 0 1 233.838 55.762 A 28.111 28.111 0 0 1 232.759 63.758 A 21.211 21.211 0 0 1 226.123 74.024 A 25.792 25.792 0 0 1 216.272 79.205 Q 212.466 80.3 207.935 80.573 A 51.46 51.46 0 0 1 204.834 80.664 A 57.504 57.504 0 0 1 198.455 80.332 Q 193.333 79.759 189.502 78.199 A 29.212 29.212 0 0 1 184.362 75.517 A 22.285 22.285 0 0 1 179.834 71.582 Z M 245.557 45.801 L 245.557 18.36 L 237.744 18.36 L 237.744 1.514 L 279.004 1.514 L 279.004 18.36 L 270.947 18.36 L 270.947 45.85 A 27.187 27.187 0 0 0 271.496 51.577 Q 273.596 61.28 283.74 61.28 A 14.706 14.706 0 0 0 287.372 60.859 A 9.571 9.571 0 0 0 292.847 57.276 Q 295.154 54.199 295.688 49.106 A 31.236 31.236 0 0 0 295.85 45.85 L 295.85 18.36 L 287.793 18.36 L 287.793 1.514 L 319.971 1.514 L 319.971 18.36 L 312.158 18.36 L 312.158 47.754 A 48.878 48.878 0 0 1 310.625 60.578 Q 306.627 75.25 292.196 79.205 A 45.727 45.727 0 0 1 280.127 80.664 A 52.519 52.519 0 0 1 270.125 79.771 Q 260.7 77.941 254.614 72.364 Q 245.557 64.063 245.557 45.801 Z M 39.209 79.248 L 0 79.248 L 0 62.403 L 7.813 62.403 L 7.813 18.36 L 0 18.36 L 0 1.514 L 44.873 1.514 Q 59.424 1.514 67.236 6.958 A 17.561 17.561 0 0 1 74.858 19.743 A 25.303 25.303 0 0 1 75.049 22.901 Q 75.049 29.688 71.68 34.18 A 17.951 17.951 0 0 1 63.651 40.18 A 22.184 22.184 0 0 1 62.549 40.576 A 16.213 16.213 0 0 1 65.773 42.02 A 11.289 11.289 0 0 1 69.36 45.313 A 12.846 12.846 0 0 1 71.362 50.152 A 17.305 17.305 0 0 1 71.68 53.174 L 71.777 57.227 A 10.774 10.774 0 0 0 71.919 58.649 Q 72.045 59.376 72.273 59.962 A 4.272 4.272 0 0 0 72.925 61.109 Q 73.731 62.102 75.414 62.333 A 8.111 8.111 0 0 0 76.514 62.403 L 81.689 62.403 L 81.689 79.248 L 64.697 79.248 A 31.936 31.936 0 0 1 59.619 78.873 Q 57.01 78.451 54.932 77.558 A 13.251 13.251 0 0 1 50.903 74.927 Q 46.436 70.606 46.338 62.256 L 46.24 55.762 Q 46.115 49.064 40.892 48.108 A 10.448 10.448 0 0 0 39.014 47.95 L 32.617 47.95 L 32.617 62.403 L 39.209 62.403 L 39.209 79.248 Z M 40.186 17.871 L 32.617 17.871 L 32.617 34.375 L 40.186 34.375 A 15.502 15.502 0 0 0 43.723 34.008 Q 48.526 32.878 49.377 28.271 A 11.826 11.826 0 0 0 49.561 26.123 A 10.38 10.38 0 0 0 49.046 22.709 Q 47.363 17.871 40.186 17.871 Z"""