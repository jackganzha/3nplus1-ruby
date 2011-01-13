class Collatz

  def max_cycle_length_for_range(range)
    range.collect { |n| cycle_length_for(n) }.max
  end

  def cycle_length_for(number = 1)
    length = 1
    length, number = length + 1, calculate_for(number) while number > 1
    return length
  end

  def calculate_for(number)
    return number/2       if number.even?
    return 3*number + 1   if number.odd?
  end
end

