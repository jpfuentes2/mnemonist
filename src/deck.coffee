Card  = require '../src/card'
_ = require 'underscore'

class Deck
  defaults:
    size: 1

  cards: []

  constructor: (options) ->
    @_create()

  at: (index) -> @cards[index]

  shuffle: (times) ->
    _.shuffle @cards
    @

  size: -> @cards.length

  _create: ->
    decks = @defaults.size
    for index in [1..decks]
      for suit in Card.SUITS
        for rank in Card.RANKS
          @cards.push new Card suit, rank

module.exports = Deck
