const path = require('path');

module.exports = {
  entry: {
    flutter_wallet_connect: './scripts/flutter_wallet_connect.js',
  },
  output: {
    filename: '[name].bundle.js',
    path: path.resolve(__dirname, 'dist'),
  },
};