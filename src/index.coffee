mkdir             = require 'mkdirp'
Task              = require 'task-registry'
register          = Task.register
aliases           = Task.aliases
defineProperties  = Task.defineProperties

module.exports = class MakeDirFileTask
  register MakeDirFileTask
  aliases  MakeDirFileTask, 'mkdir', 'MakeDir'

  defineProperties MakeDirFileTask
    dest:
      type: 'String'
    mode:
      type: 'String'

  constructor: -> return super
  _executeSync: (aOptions)->mkdir.sync aOptions.dest, aOptions
  _execute: (aOptions, done)->mkdir aOptions.dest, aOptions, done