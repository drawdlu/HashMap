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

  def get(key)
    @buckets.each do |list|
      index = list.find(key)
      return list.at(index).value unless index.nil?
    end

    nil
  end

  def has?(key)
    @buckets.each do |list|
      return true if list.contains?(key)
    end

    false
  end

  def remove(key)
    @buckets.each do |list|
      next unless list.contains?(key)

      index = list.find(key)
      value = list.at(index).value
      list.remove_at(index)
      return value
    end

    nil
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
end
