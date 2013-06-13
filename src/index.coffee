exports.hello = -> "Hello, global keys: " + Object.keys global
exports.add = (a, b) -> a + b

exports.test =
    shouldSucceed: ->
    shouldWarn: -> "My Warning"
    add: -> throw "Things didn't add up" unless exports.add(1,2) == 3
