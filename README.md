## task-registry-file-mkdir [![npm](https://img.shields.io/npm/v/task-registry-file-mkdir.svg)](https://npmjs.org/package/task-registry-file-mkdir)

[![Build Status](https://img.shields.io/travis/snowyu/task-registry-file-mkdir.js/master.svg)](http://travis-ci.org/snowyu/task-registry-file-mkdir.js)
[![Code Climate](https://codeclimate.com/github/snowyu/task-registry-file-mkdir.js/badges/gpa.svg)](https://codeclimate.com/github/snowyu/task-registry-file-mkdir.js)
[![Test Coverage](https://codeclimate.com/github/snowyu/task-registry-file-mkdir.js/badges/coverage.svg)](https://codeclimate.com/github/snowyu/task-registry-file-mkdir.js/coverage)
[![downloads](https://img.shields.io/npm/dm/task-registry-file-mkdir.svg)](https://npmjs.org/package/task-registry-file-mkdir)
[![license](https://img.shields.io/npm/l/task-registry-file-mkdir.svg)](https://npmjs.org/package/task-registry-file-mkdir)

Create a new directory and any necessary subdirectories at dest path.

## Usage

```js
mkdir  = require('task-registry-file-mkdir')

mkdir.executeSync({
  dest: 'a/folder/To/Create'
  mode: '0770' //defaults to 0777 & (~process.umask()).
})
```

## API


## TODO


## License

MIT
