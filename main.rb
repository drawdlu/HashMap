require_relative 'lib/hashmap'
require_relative 'lib/hashset'

test = HashSet.new

test.set('apple')
test.set('banana')
test.set('carrot')
test.set('dog')
test.set('banana')

p test

p test.entries
