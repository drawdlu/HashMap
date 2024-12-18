# frozen_string_literal: true

module List
  # A node in the list
  class Node
    attr_accessor :key, :value, :next_node

    def initialize
      @key = nil
      @value = nil
      @next_node = nil
    end
  end
end
