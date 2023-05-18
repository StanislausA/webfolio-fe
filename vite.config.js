import { defineConfig } from "vite";
import elmPlugin from "vite-plugin-elm";

export default defineConfig({
  plugins: [elmPlugin()],
  server: {
    host: true,
    strictPort: true,
    port: 3000
  }
});
