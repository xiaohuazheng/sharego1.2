var webpack = require('webpack');
var path = require('path');
var output = {
	path: path.join(__dirname, 'javascripts/js'),
    filename: 'navheader.min.js'
}
module.exports = {
    resolveLoader: { root: path.join(__dirname, "node_modules") },
    context: __dirname + path.sep + "app",//path.sep系统分隔符
    /**
     * 入口模块配置
     * 默认每个入口包分别声明着内部需要依赖哪些模块
     * webpack会在打包阶段合并这些依赖模块
     * 但是通过CommonsChunkPlugin可以声明某个模块里的所有
     * 依赖为公用模块,既其它的入口包在依赖common模块里的包时,是不会重复打包的
     */
    entry: './public/javascripts/js/navheader.js',
    output: output,
    module: {
        loaders: [
            {test: /\.js$/, loader: 'js-loader'},
            { test: /\.css$/, loader: "style-loader!css-loader"},
            { test: /\.png$/, loader: "url-loader?mimetype=image/png" }
        ]
    },
    resolve: {
        /*简称配置*/
        alias: {
            navheader : __dirname + '/public/javascripts/js/navheader.js',
            crawler : __dirname + '/public/javascripts/js/crawler.js',
            dealcoll : __dirname + '/public/javascripts/js/dealcoll.js',
            loginreg : __dirname + '/public/javascripts/js/loginreg.js',
            myCharts : __dirname + '/public/javascripts/js/myCharts.js'
        }
    },
    plugins: [
        new webpack.optimize.DedupePlugin(),
        new webpack.optimize.OccurenceOrderPlugin(),
        (function() {
            if (isProduction) {
                return  new webpack.optimize.UglifyJsPlugin({
                    sourceMap: false
                });
            }
            return function() {};
        })(),
        function() {
            this.plugin("done", function(stats) {
                var ejs = require('ejs'),
                    fs = require("fs");
                fs.writeFileSync(
                    path.join(__dirname, "javascripts/js"),
                    JSON.stringify(stats.toJson().assetsByChunkName)
                );

                var cache = require(path.join(__dirname, "javascripts/js"));
                console.info(cache);
                ejs.renderFile(path.join(__dirname, "javascripts/js"),cache,function (err,html) {
                  if (err) {
                    console.info(err);
                  } else {
                    fs.writeFileSync(
                        path.join(__dirname, "javascripts/js"),
                        html
                    )
                  }
                });
            });
        }
    ]
};