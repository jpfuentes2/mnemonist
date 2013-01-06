Card  = require './card'
_ = require 'underscore'

class Deck
  defaults:
    size: 1

  constructor: (@options) ->
    _.defaults @options ?= {}, @defaults
    @_create()

  at: (index) -> @cards[index]

  shuffle: ->
    @cards = _.shuffle @cards
    @

  size: -> @cards.length

  _create: ->
    @cards = []
    for index in [1..@options.size]
      for suit in Card.SUITS
        for rank in Card.RANKS
          @cards.push new Card suit, rank

module.exports = Deck
