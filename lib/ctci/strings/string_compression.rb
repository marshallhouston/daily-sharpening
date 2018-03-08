# CTCI 1.6 implement a method to perform basic string compression using the counts of repeated characters. For example the string `aabcccccaaa` would become a2b1c5a3. If the "compressed" strig would not become smaller than the original string, your method should return the original string. You can assume the string only has uppercase and lowercase letters (a-z).

class StringCompressor

  def self.compress(input)
    final = ''
    index = 0
    until input[index] == nil
      final += count_consecutive(input, index)
      index += final[-1].to_i
    end
    final.length < input.length ? final : input
  end

  private

    def self.count_consecutive(input, index)
      count = 1
      curr_index = index
      until input[index] != input[curr_index + 1]
        count += 1
        curr_index += 1
      end
      input[index] + "#{count}"
    end
end
