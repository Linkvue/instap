const { environment } = require('@rails/webpacker')
const customConfig = require('./custom')
environment.loaders.append('css', {
  test: /\.css$/,
  use: [
    {loader: 'style-loader'},
    {loader: 'css-loader'}
  ]
})
//environment.config.merge(customConfig)

module.exports = environment
