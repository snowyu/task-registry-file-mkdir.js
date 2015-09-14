chai            = require 'chai'
sinon           = require 'sinon'
sinonChai       = require 'sinon-chai'
should          = chai.should()
expect          = chai.expect
assert          = chai.assert
chai.use(sinonChai)

setImmediate    = setImmediate || process.nextTick

fs                  = require 'fs'
rm                  = require 'rimraf'
MkdirTask           = require '../src'

describe 'MkdirTask', ->
  task = MkdirTask()
  destDir = __dirname+'/fixture'
  beforeEach ->
  afterEach (done)-> rm destDir, done

  describe 'executeSync', ->
    it 'should make a dir recursively', ->
      vDir = destDir + '/ab/cv/eef'
      expect(fs.existsSync vDir).to.be.false
      result = task.executeSync dest: vDir
      expect(fs.existsSync vDir).to.be.true
      result = task.executeSync dest: vDir

  describe 'execute', ->
    it 'should make a dir recursively', (done)->
      vDir = destDir + '/ab/c1v/eef'
      expect(fs.existsSync vDir).to.be.false
      task.execute dest: vDir, (err, result)->
        unless err
          expect(fs.existsSync vDir).to.be.true
        done(err)

