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

  def increase_and_reset
    @capacity *= 2
    keys = entries
    clear
    @buckets = Array.new(@capacity) { [] }

    keys.each do |key|
      set(key)
    end
  end

  def length
    size = 0
    @buckets.each do |list|
      size += list.size
    end
    size
  end

  def clear
    @buckets.each do |list|
      list.clear
    end

    nil
  end

  def entries
    key_value = []
    @buckets.each do |list|
      list.each do |key|
        key_value.append(key)
      end
    end

    key_value
  end
end
