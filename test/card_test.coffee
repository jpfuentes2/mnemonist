assert = require 'assert'

Card  = require '../src/card'

describe 'Card', ->

  card = new Card "Hearts", 10

  describe '#eql', ->
    it 'is true when the suit and value match', ->
      other = new Card card.suit, card.rank
      assert card.eql other

    it 'is false when the suit or value does not match', ->
      other = new Card card.suit, parseInt(card.rank, 10) + 1
      assert not card.eql other

    it 'is aliased to #is', ->
      assert.equal Card.is, Card.eql

  describe '#toString', ->
    it 'lowercases the suit', ->
      assert card.toString() is "h0"

    it 'is always 2 characters', ->
      assert card.toString().length is 2
