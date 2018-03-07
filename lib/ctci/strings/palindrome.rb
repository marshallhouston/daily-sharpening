# CTCI 1.4 # given a string, write a function to check if it is a permutation of a plaindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

# input
# Tact coa
# output: true
# (taco cat, atcocta)

class PalindromeChecker

  def self.palindrome_permutation(input)
    if input.length == 1
      return true
    end
    characters = individual_characters(input)
    char_count = count_characters(characters)
    if char_count.keys.length == 1
      return true
    end
    palindrome?(char_count)
  end

  private

    def self.individual_characters(input)
      input.gsub(' ', '').downcase.split('')
    end

    def self.count_characters(characters)
      char_count = Hash.new(0)
      characters.each do |char|
        char_count[char] += 1
      end
      char_count
    end

    def self.palindrome?(char_count)
      odd_even_count = char_count.group_by { |k,v| v % 2 }
      odd_even_count[1].length == 1 ? true : false
    end
end
