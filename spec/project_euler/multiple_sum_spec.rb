require 'project_euler/multiple_sum'

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

describe MultipleSummer do
  describe '.class_methods' do
    describe '.sum(max_number)' do
      it 'finds the sum of all multiples of 3 or 5 below the max_number' do
      # 3, 5, 6, 9
      expect(MultipleSummer.sum(10)).to eq 23
      # 3, 5, 6, 9, 10, 12
      expect(MultipleSummer.sum(15)).to eq 45

      expect(MultipleSummer.sum(1_000)).to eq 233_168
      end
      context 'when a negative number is passed in' do
        it 'returns 0' do
          expect(MultipleSummer.sum(-2)).to eq 0
        end
      end
    end
  end
end
