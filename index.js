import { Elm } from "./src/Main.elm";
import "./index.css";

if (process.env.NODE_ENV === "development") {
    const ElmDebugTransform = await import("elm-debug-transformer");

    ElmDebugTransform.register({
        simple_mode: true
    });
}

const root = document.querySelector("#app");

Elm.Main.init({ node: root });
