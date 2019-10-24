process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const merge = require('webpack-merge')
const environment = require('./environment')
const customConfig = require('./config')
const dev = require('../loaders/dev')


module.exports = merge(environment.toWebpackConfig(), customConfig)
