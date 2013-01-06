class Card
  constructor: (@suit, @rank) ->
    @value = @rank.toString()
    @value = "0" if @value is "10"

  toString: ->
    suit = @suit.toLowerCase().charAt(0)
    [suit, @value].join ""

  eql: (other) -> other.toString() is @toString()

Card.is = Card.eql
Card.SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]
Card.RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

module.exports = Card
