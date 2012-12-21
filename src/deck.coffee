class Deck
  defaults:
    size: 52

  cards: []

  constructor: (options) ->
    @_create()

  at: (index) -> @cards[index]

  shuffle: (times) ->

  _create: ->
    for index in [1..@size]
      @cards.push Card.new "", ""

module.exports = Deck
