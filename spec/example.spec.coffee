add = require "../src/example.coffee"

describe ".add", ->
    it "should add two numbers and return the result", ->
        expect(add 1, 2).to.equal 3
        expect(add 4, 6).to.equal 10

    it "should do more cool stuff", ->
        expect("test".indexOf "t").to.not.equal -1
