## webpack-cli-bug

In node.js 13.0-13.6 you can catch an error:
```sh
Error: No valid exports main found for '/node_modules/colorette'
    at resolveExportsTarget (internal/modules/cjs/loader.js:625:9)
    at applyExports (internal/modules/cjs/loader.js:502:14)
    at resolveExports (internal/modules/cjs/loader.js:551:12)
    at Function.Module._findPath (internal/modules/cjs/loader.js:657:22)
    at Function.Module._resolveFilename (internal/modules/cjs/loader.js:960:27)
    at Function.Module._load (internal/modules/cjs/loader.js:855:27)
    at Module.require (internal/modules/cjs/loader.js:1033:19)
    at require (/node_modules/v8-compile-cache/v8-compile-cache.js:161:20)
    at Object.<anonymous> (/node_modules/webpack-cli/lib/bootstrap.js:1:83)
    at Module._compile (/node_modules/v8-compile-cache/v8-compile-cache.js:194:30) {
  code: 'MODULE_NOT_FOUND'
```

It happens with any package that has ESM support in package.json.

## Reproduce

### Manual
1. `npm i` - install dependencies
2. `npm run build` - run webpack

### Via docker
1. `docker build -t webpack-test .` - build image
2. `docker run --name webpack-test --rm webpack-test` - run webpack
