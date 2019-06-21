const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new WebPack.ProviderPlugin({
    $: 'jquery/src/jsquery',
    JQuery: 'jquery/src/jquery'
  })
)

module.exports = environment
