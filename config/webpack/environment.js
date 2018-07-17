const { environment } = require('@rails/webpacker')
environment.loader.append('css', {
  test: /\.css$/,
  use: [
    {loader: 'style-loader'},
    {loader: 'css-loader'}
  ]
})

module.exports = environment
