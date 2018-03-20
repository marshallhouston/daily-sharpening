require_relative 'node'

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(key, value)
    if !head
      @head = Node.new(key, value)
    else
      current_node = @head
      search_node = search(key)
      if search_node
        search_node.value = value
      else
        find_last_node(current_node).next_node = Node.new(key, value)
      end
    end
  end

  def head_exists?
    head
  end

  def find_last_node(current_node)
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node
  end

  def search(key)
    return nil if !head_exists?
    current_node = @head
    until current_node.nil? || current_node.key == key
      current_node = current_node.next_node
    end
    current_node
  end

  def show_contents
    current_node = @head
    contents = "#{current_node.key}: #{current_node.value}"
    until current_node.next_node.nil?
      contents += ", #{current_node.key}: #{current_node.value}"
      current_node = current_node.next_node
    end
    contents
  end

end
