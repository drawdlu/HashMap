require_relative 'lib/hashmap'

test = HashMap.new

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')

test.set('lion', 'fur')
test.set('hat', 'test')
test.set('ice cream', 'wef')
test.set('jacket', 'sdf')

test.set('moon', 'silver')

test.set('lion', 'sdfdsf')
test.set('hat', 'sdf')
test.set('ice cream', 'sdfasdf')
test.set('jacket', 'asdfsd')

p test.length

p test.entries

p test.length
