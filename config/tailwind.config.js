const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        link: "#1e3a8a",
        primary: "#701a75",
        primary_light: "#c026d3",
        gray: "#737373",
        dark_red: "#b91c1c",
        light_red: "#fecaca",
        dark_green: "#14532d",
        light_green: "#bbf7d0",
        dark_yellow: "#ca8a04",
        light_yellow: "#fef9c3",
      },
      backgroundImage: {
        'logo': "url('logo.png')",
        'bg_login': "url('bg.jpg')",
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
