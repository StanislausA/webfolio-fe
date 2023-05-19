/** @type {import('tailwindcss').Config} */
module.exports = {
  mode: "jit",
  content: [
      "./index.html",
      "./src/**/*.{elm,js,html}"
  ],
  theme: {
    extend: {},
    fontFamily: {
        "custom": ["Philosopher-Regular"],
        "sans": ["Proxima\\ Nova", "Open\\ Sans"]
    }
  },
  plugins: [],
  variants: {},
}
