require_relative 'lib/hashmap'

test = HashMap.new

test.set('test', 'one')
test.set('test', 'two')
test.set('Carlos', 'yeah')
test.set('Carla', 'no')
test.set('Carla', 'treat')
test.set('Tent', 'no')

p test.length

p test.clear

p test.length
