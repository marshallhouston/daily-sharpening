require 'ctci/strings/permutation_checker'

describe PermutationChecker do
  describe '.class_methods' do
    describe '.permutations(string1, string2)' do
      it 'checks if all characters in string1 are present in string2 and returns a Boolean' do
        result1 = PermutationChecker.permutations("hi", "ih")
        expect(result1).to be true
        result2 = PermutationChecker.permutations("hello", "oellh")
        expect(result2).to be true
      end

      it 'returns false if the strings are different lengths' do
        result = PermutationChecker.permutations("hi", "ihs")
        expect(result).to be false
      end

      context 'case sensitivity' do
        it 'can differentiate between cases' do
          result1 = PermutationChecker.permutations("Hi", "iH")
          expect(result1).to be true
          result2 = PermutationChecker.permutations("HoW", "how")
          expect(result2).to be false
        end
      end

      context 'with whitespace' do
        it 'can differeniate between whitespaces' do
          result1 = PermutationChecker.permutations("H i", "iH ")
          expect(result1).to be true
          result2 = PermutationChecker.permutations("H o W", " how")
          expect(result2).to be false
        end
      end
    end
  end
end
