assert = require 'assert'

_ = require 'underscore'
Deck  = require '../src/deck'

describe 'Deck', ->

  deck = new Deck

  describe "#at", ->
    it 'obtains a card at given index', ->
      card = deck.at 0
      other = deck.cards[0]
      assert card.eql other

  describe "#create", ->
    it "makes N decks via :size option", ->
      twoDecks = new Deck size: 2
      assert.equal 104, twoDecks.size()

    it "includes all suits", ->
      suits = _.countBy deck.cards, (c) -> c.suit
      assert.equal 4, _.keys(suits).length

    it "includes all ranks by suit", ->
      suits = _.countBy deck.cards, (c) -> c.suit
      assert.equal 13, ranks for suit, ranks of suits

  describe '#shuffle', ->
    it "returns self", ->
      assert.equal deck.shuffle(), deck

    it "randomizes the cards", ->
      origCards = deck.cards
      assert.notDeepEqual deck.shuffle, origCards
