require 'ctci/strings/urlify'

describe Urlifier do
  describe '.class_methods' do
    describe '.urlify(string, char_count)' do
      context 'when a single space is present' do
        it 'replaces spaces with %20' do
          url = Urlifier.urlify("Hi there", 8)
          expect(url).to eq "Hi%20there"
        end
      end

      context 'when multiple spaces are in the middle' do
        it 'replaces white spaces with %20' do
          url = Urlifier.urlify("Programming is Fun", 18)
          expect(url).to eq "Programming%20is%20Fun"
        end
      end

      context 'when a space is at the beginning' do
        it 'removes beginning spaces and replaces others with %20' do
          url = Urlifier.urlify(" The Water", 10)
          expect(url).to eq "The%20Water"
        end
      end

      context 'when a space is at the end' do
        it 'removes ending spaces and replaces others with %20' do
          url = Urlifier.urlify("The Water  ", 9)
          expect(url).to eq "The%20Water"
        end
      end
    end
  end
end
