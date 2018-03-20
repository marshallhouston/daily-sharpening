require_relative 'linked_list'
require_relative 'list_container'

lc = ListContainer.new
lc.create_lists

lc.put("ba", ["one", "two"]) # score of 0, index position 0
lc.put("abac", 2.5) # socre of 1, index position 1
lc.put("baz", :hi) # score of 2. index position 2
lc.put("aac", "helpers") # score of 3, index position 3
lc.put("foo", 15) # score of 4 so the linked list in index position 4

lc.get("foo") # => 15
lc.put("foo", 25) # this should overwrite the value of foo.
lc.get("foo") # => 25

# puts "This should be helpers: #{lc.get("aac")}"
lc.get("baz") # => :hi
lc.get("abac") # => 2.5
lc.get("ba") # => ["one", "two"]
# puts "This should be nil: #{lc.get("nowhere")}"

lc.put("play", 123)
# puts "This should be 123: #{lc.get("play")}"
lc.put("pmax", ['hey', 'hi'])
# puts "This should be ['hey', 'hi']: #{lc.get("pmax")}"
lc.put("ombx", -8.9)
# puts "This should be -8.9: #{lc.get("ombx")}"
lc.put("ombx", 9.0)
# puts "This should be 9.0: #{lc.get("ombx")}"

lc.visualize
