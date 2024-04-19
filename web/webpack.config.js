const path = require('path');
const NodePolyfillPlugin = require('node-polyfill-webpack-plugin');

module.exports = {
  entry: {
    flutter_wallet_connect: './scripts/flutter_wallet_connect.js',
    wallect_connect_etherum: './scripts/wallect_connect_etherum.js'
  },
  plugins: [
    new NodePolyfillPlugin()
  ],
  output: {
    filename: '[name].bundle.js',
    path: path.resolve(__dirname, '.dist'),
  },
  devServer: {
    historyApiFallback: true
  }
};