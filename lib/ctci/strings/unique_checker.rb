# CTCI 1.1: implement an algorithm that determines if a string has all unique characters. What if you cannot use additional data structures?

class UniqueChecker

  ## without other data structures
  def self.unique(input)
    index = 0
    unique = true
    next_one = index + 1
    until index == input.length do
      until next_one == input.length do
        if input[index] == input[next_one]
          unique = false
          break
        end
        next_one += 1
      end
      index += 1
    end
    unique
  end

  ### with another data structure
  # def self.unique(input)
  #   letters = {}
  #   index = 0
  #   until index == input.length do
  #     if letters[input[index]]
  #       letters[input[index]] += 1
  #     else
  #       letters[input[index]] = 1
  #     end
  #     index += 1
  #   end
  #   letters.keys.length == input.length ? true : false
  # end
end
