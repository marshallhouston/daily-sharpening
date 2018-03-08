require 'ctci/strings/string_compression'

describe StringCompressor do
  describe '.class_methods' do
    describe '.compress(string)' do
      it 'counts consecutive letters and returns a compressed string' do
        string = "aabbb"
        compressed = StringCompressor.compress(string)
        expect(compressed).to eq "a2b3"
      end

      context 'when the compressed does not become smaller than the original' do
        it 'returns the original string' do
          string = "aabb"
          compressed = StringCompressor.compress(string)
          expect(compressed).to eq "aabb"
        end
      end

      context 'when the string includes upper and lower case letters' do
        it 'counts consecutive letters with case sensitivity' do
          string = "aaAbbBBBBB"
          compressed = StringCompressor.compress(string)
          expect(compressed).to eq "a2A1b2B5"
        end
      end
    end
  end
end
