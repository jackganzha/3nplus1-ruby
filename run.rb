require './lib/collatz'

def read_input_as_ranges()
  input  = File.new('inputs.in', 'r')

  ranges = input.lines.collect {|line|
    arr = line.split
    (arr.first.to_i..arr.last.to_i)
  }
  input.close
  return ranges
end

def write_output_for_ranges(ranges)
  output = File.new('output.out', 'w+')
  collatz = Collatz.new

  ranges.each { |range|
    output << "#{range.first} #{range.last} #{collatz.max_cycle_length_for_range(range)} \n"
  }
  output.close
end

write_output_for_ranges read_input_as_ranges

