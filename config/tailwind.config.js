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
      backgroundImage: {
        'vegetables_bg': "url('vegetables.jpg')",
        'logo': "url('logo.png')",
        'bg_img': "url('bg.jpg')",
        'home_bg': "url('home-bg.svg')"
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        link: "#2563eb",
        primary: "#701a75",
        primary_light: "#c026d3",
        gray: "#737373",
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
