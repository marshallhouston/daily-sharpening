#CTCI 1.3 # write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the aditional characters, and that you are given the "true" length of the string.

# example
# input: "Mr John Smith", 13
# output: "Mr%20John%20Smith"

class Urlifier

  def self.urlify(input, char_count)
    input.split(' ').join('%20')
  end

end
