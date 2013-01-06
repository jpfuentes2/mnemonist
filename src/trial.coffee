_ = require 'underscore'
Deck  = require './deck'

class Trial
  defaults:
    deck: {}

  constructor: (@options) ->
    _.defaults @options ?= {}, @defaults
    @deck = new Deck @options.deck
    @position = 0

  current: -> @deck.at @position

  start: ->

  next: ->
    @position += 1
    @

module.exports = Trial
