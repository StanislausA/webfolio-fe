module HelloWorldSpec exposing (suite)

import HelloWorld exposing (helloWorld)
import Test exposing (Test)
import Test.Html.Query as Query
import Test.Html.Selector as Html


suite : Test
suite =
    Test.describe "HelloWorld"
        [ Test.test "renders and runs helloWorld" <|
            \_ ->
                helloWorld
                    |> Query.fromHtml
                    |> Query.has [ Html.text "Hello, Vite + Elm!" ]
        ]
