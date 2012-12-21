class Card
  constructor: (@suit, value) ->
    @value = value.toString()
    @value = "0" if @value is "10"

  toString: ->
    suit = @suit.toLowerCase().charAt(0)
    [suit, @value].join ""

  eql: (other) -> other.toString() is @toString()

Card.is = Card.eql

module.exports = Card
