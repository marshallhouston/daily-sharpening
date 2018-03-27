class MultipleSummer

  def self.sum(max)
    i = 0
    sum = 0
    while i < max
      multiple?(i) ? sum += i : sum
      i += 1
    end
    sum
  end

  private

    def self.multiple?(num)
      divisible?(num) ? true : false
    end

    def self.divisible?(num)
      num % 15 == 0 || num % 5 == 0 || num % 3 == 0
    end
end
