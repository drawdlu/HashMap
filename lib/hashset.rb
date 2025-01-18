# frozen_string_literal: true

require_relative 'linkedlist'
require_relative 'hashmap'

# Implements a custom hash map
class HashSet < HashMap
  include List

  def initialize(capacity = 16, load = 0.75)
    @load_factor = load
    @capacity = capacity
    @buckets = Array.new(capacity) { [] }
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code
  end

  def set(key)
    index = hash(key) % @capacity
    bucket = @buckets[index]
    return if bucket.include?(key)

    limit = (@capacity * @load_factor).round
    increase_and_reset if length >= limit
    @buckets[index].append(key)
  end
end
