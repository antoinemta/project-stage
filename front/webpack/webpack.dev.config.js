let merge = require('webpack-merge');
const path = require("path");
let webpack = require('webpack');

const baseWebPackConfig = require('./webpack.config');

let devWebpackConfig = merge(baseWebPackConfig,
   {  
      devServer: {
         historyApiFallback: true,
         index: "index.html",
         noInfo: true,
         overlay: true
       },
      plugins: [
         new webpack.DefinePlugin({
            'process.env.NODE_ENV': JSON.stringify('development')
         }),
      ],
   });

module.exports = devWebpackConfig;
