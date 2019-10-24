// config/webpack/custom.js

const path = require('path')

module.exports = {
  resolve: {
    alias: {
      '@atoms': path.resolve(__dirname, '..', '..', 'app/client/javascript/components/atoms'),
      '@molecules': path.resolve(__dirname, '..', '..', 'app/client/javascript/components/molecules'),
      '@organisms': path.resolve(__dirname, '..', '..', 'app/client/javascript/components/organisms'),
      '@images': path.resolve(__dirname, '..', '..', 'app/client/assets/images'),
    }
  }
}
