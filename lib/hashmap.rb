# frozen_string_literal: true

require_relative 'linkedlist'

# Implements a custom hash map
class HashMap
  include List

  def initialize(capacity = 16, load = 0.75)
    @load_factor = load
    @capacity = capacity
    @buckets = Array.new(capacity) { LinkedList.new }
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code
  end

  def set(key, value)
    index = hash(key) % @capacity
    bucket = @buckets[index]
    if bucket.contains?(key)
      index_key = bucket.find(key)
      bucket.at(index_key).value = value
    else
      bucket.append(key, value)
    end
  end
end
