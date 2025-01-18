require_relative 'lib/hashmap'
require_relative 'lib/hashset'

test = HashSet.new

test.set('apple')
test.set('banana')
test.set('carrot')
test.set('dog')
test.set('elephant')
test.set('frog')
test.set('grape')
test.set('hat')
test.set('ice cream')
test.set('jacket')
test.set('kite')
test.set('lion')
test.set('sdfas')
test.set('asdf')
test.set('werew')
test.set('g4')

p test

p test.length

p test.get('jacket')
