let merge = require('webpack-merge');
let webpack = require('webpack');

const baseWebPackConfig = require('./webpack.config');

let devWebpackConfig = merge(baseWebPackConfig,
   {
      plugins: [
         new webpack.DefinePlugin({
            'process.env.NODE_ENV': JSON.stringify('production')
         })
      ],
   });

module.exports = devWebpackConfig;
