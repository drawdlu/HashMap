require_relative 'lib/hashmap'

test = HashMap.new

test.set('test', 'one')
test.set('test', 'two')
test.set('Carlos', 'yeah')
test.set('Carla', 'no')

p test.has?('test')
