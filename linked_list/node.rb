class Node

  attr_reader :key
  attr_accessor :next_node, :value

  def initialize(key, value)
    @key = key
    @value = value
    @next_node = nil
  end


end
