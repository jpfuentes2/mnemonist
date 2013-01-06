assert = require 'assert'

Trial  = require '../src/trial'

describe 'Trial', ->

  trial = new Trial

  describe "#start", ->

  describe "#current", ->
    it "gives the curent card", ->
      trial.next()
      assert trial.current()

  describe "#next", ->
    it "returns self", ->
      assert.equal trial.next(), trial

