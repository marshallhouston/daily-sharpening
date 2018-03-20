require_relative 'linked_list'

class ListContainer

  attr_reader :lists

  def initialize
    @lists = []
  end

  def create_lists
    5.times do
      lists << LinkedList.new
    end
  end

  def put(key, value)
    linked_list = lists[hasher(key)]
    linked_list.append(key, value)
  end

  def get(key)
    linked_list = lists[hasher(key)]
    linked_list.search(key) ? linked_list.search(key).value : nil
  end

  def visualize
    lists.each do |list|
      puts list.show_contents
    end
  end

  private

    def hasher(key)
      key.unpack("C*").sum % 5
    end
end
