const { environment } = require('@rails/webpacker');
const merge = require('webpack-merge');
const customConfig = require('./config')

environment.config.merge(customConfig)

module.exports = environment;
