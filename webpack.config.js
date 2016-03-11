var webpack = require('webpack');
var path = require('path');
var output = {
	path: path.join(__dirname, 'javascripts/js'),
    filename: 'navheader.min.js'
}
module.exports = {
  resolveLoader: { root: path.join(__dirname, "node_modules") },

  entry: './public/javascripts/js/navheader.js',
  output: output
};