# 用karma jasmine webpack单体测试

## 开始Nodejs项目

npm init -y

## 安装依赖包

```json
"@types/jasmine": "^3.7.7",
"@types/node": "^16.0.0",
"jasmine": "^3.8.0",
"jasmine-core": "^3.8.0",
"karma": "^6.3.4",
"karma-chrome-launcher": "^3.1.0",
"karma-coverage": "^2.0.3",
"karma-jasmine": "^4.0.1",
"karma-junit-reporter": "^2.0.1",
"karma-sourcemap-loader": "^0.3.8",
"karma-typescript": "5.5.1",
"karma-typescript-preprocessor": "^0.4.0",
"karma-webpack": "^5.0.0",
"ts-loader": "^9.2.3",
"ts-node": "^10.0.0",
"typescript": "^4.3.5",
"webpack": "^5.42.1"
```

## tsconfig.json

tsc --init

```json
{
  "compilerOptions": {
    "target": "ES2019",
    "module": "commonjs",
    "sourceMap": true,
    "outDir": "./dist",
    "strict": true,
    "esModuleInterop": true,
    "skipLibCheck": true,
    "forceConsistentCasingInFileNames": true
  },
  "include": [
    "./src/index.ts"
  ],
  "exclude": [
    "node_modules",
    "test"
  ]
}
```

## karma.conf.js

```js
var webpackConfig = require('./webpack.config');
module.exports = function (config) {
    config.set({
        basePath: '',
        frameworks: ['jasmine'],
        files: [
            './test/*.ts', './src/*.ts'
        ],
        exclude: [],
        preprocessors: {
            './src/*.ts': ['webpack', 'coverage'],
            './test/*.ts': ['webpack']
        },
        webpack: webpackConfig,
        reporters: ['progress', 'junit', 'coverage'],
        junitReporter: {
            outputDir: 'report'
        },
        coverageReporter: {
            type: 'html',
            dir: 'report/coverage'
        },
        port: 9876,
        colors: true,
        logLevel: config.LOG_INFO,
        autoWatch: false,
        browsers: ['Chrome'],
        singleRun: true,
        concurrency: Infinity
    })
}
```

## webpack.config.js

```js
let path = require('path');

module.exports = {
    devtool: 'inline-source-map',
    resolve: {
        extensions: ['.ts', 'js']
    },
    module: {
        rules: [
            {test: /\.ts?$/, use: 'ts-loader'}
        ]
    }
}

```
