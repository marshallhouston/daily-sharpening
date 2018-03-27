class FibonacciSummer

  def self.even_sum(max)
    fibonacci_sequence(max).select do |num|
      num.even?
    end.sum
  end

  private

    def self.fibonacci_sequence(max)
      sequence = [0, 1]
      next_number = next_number(sequence)
      while next_number < max
        sequence.push(next_number)
        next_number = next_number(sequence)
      end
      sequence
    end

    def self.next_number(sequence)
      sequence[-2] + sequence[-1]
    end
end
