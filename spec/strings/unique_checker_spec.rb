require 'ctci/strings/unique_checker'

describe UniqueChecker do
  context '.class_methods' do
    context '.unique(input)' do
      it 'checks if all letters in the string are unique and returns a Boolean' do
        expect(UniqueChecker.unique("abc")).to be true
        expect(UniqueChecker.unique("abcdE")).to be true
        expect(UniqueChecker.unique("aaaa")).to be false
        expect(UniqueChecker.unique("AbA")).to be false
      end
    end
  end
end
