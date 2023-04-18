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
            colors: {
                'whitegray': '#F5F5F5',
                'clearbrown': '#DDC6B4',
                'slate': '#BDA69C',
                'brown': '#60473B',
                'greige': '#AA9B9A'
            },
            fontFamily: {
                sans: ['Athiti', 'Inter var', ...defaultTheme.fontFamily.sans],
                'Athiti': ['Athiti', 'sans-serif'],
                'Prompt': ['Prompt', 'sans-serif'],
                'Moul': ['Moul', cursive],
                'DancingScript': ['"Dancing Script"', cursive]
            },
        },
    },

    plugins: [
        require('@tailwindcss/forms'),
        require('@tailwindcss/aspect-ratio'),
        require('@tailwindcss/typography'),
    ]
}
