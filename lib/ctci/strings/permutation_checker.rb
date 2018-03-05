# CTCI 1.2: check permutation - given two strings, write a method to decide if one is a permutation of the other

class PermutationChecker

  def self.permutations(string1, string2)
    result = false
    if string1.length != string2.length
      return result
    end
    sorter(string1) == sorter(string2) ? result = true : result
  end

  private

    def self.sorter(string)
      string.chars.sort.join
    end
end
