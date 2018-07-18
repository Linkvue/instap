const { environment } = require('@rails/webpacker')
environment.loaders.append('css', {
  test: /\.css$/,
  use: [
    {loader: 'style-loader'},
    {loader: 'css-loader'}
  ]
})

module.exports = environment
