# CTCI 1.2: check permutation - given two strings, write a method to decide if one is a permutation of the other

class PermutationChecker

  def self.permutations(string1, string2)
    if string1.length != string2.length
      return false
    end
    sorter(string1) == sorter(string2)
  end

  private

    def self.sorter(string)
      string.chars.sort.join
    end
end
