class Card
  constructor: (@suit, @rank) ->
    @_value = @rank.toString()
    @_value = "0" if @_value is "10"

  toString: ->
    suit = @suit.toLowerCase().charAt(0)
    [suit, @_value].join ""

  eql: (other) -> other.toString() is @toString()

Card.is = Card.eql
Card.SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]
Card.RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

module.exports = Card
