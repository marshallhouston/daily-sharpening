require 'ctci/strings/palindrome'

describe PalindromeChecker do
  describe '.class_methods' do
    describe '.palindrome_permutation(string)' do
      context 'when a single word is input' do
        it 'checks if the string is a permutation of a palindrome and returns a Boolean' do
          result1 = PalindromeChecker.palindrome_permutation("hello")
          expect(result1).to be false
          result2 = PalindromeChecker.palindrome_permutation("abb")
          expect(result2).to be true
          result3 = PalindromeChecker.palindrome_permutation("a")
          expect(result3).to be true
          result4 = PalindromeChecker.palindrome_permutation("AA")
          expect(result4).to be true
          result5 = PalindromeChecker.palindrome_permutation("BBbb")
          expect(result5).to be true
        end
      end
      context 'when a there are multiple words' do
        it 'checks if the string is a permutation of a palindrome and returns a Boolean' do
          result1 = PalindromeChecker.palindrome_permutation("hi there")
          expect(result1).to be false
          result2 = PalindromeChecker.palindrome_permutation("tact coa")
          expect(result2).to be true
        end
      end
      context 'when there are upper and lower case letters' do
        it 'checks if the string is a permutation of a palindrome and returns a Boolean' do
          result1 = PalindromeChecker.palindrome_permutation("Is This")
          expect(result1).to be false
          result2 = PalindromeChecker.palindrome_permutation("RooRA")
          expect(result2).to be true
        end
      end
    end
  end
end
