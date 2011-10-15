require 'benchmark'

def benchmark(title, input_data = nil, count = 1, &block)
  input_data.is_a?(Array) ? benchmark_cycle(title, input_data, count, &block) : measure(title, input_data, count, &block)
end

def benchmark_cycle(title, input_data_sizes = [1], count = 1, &block)
  input_data_sizes.each do |size|
    input_data = generate_input_data(size)
    measure(title, input_data, count, &block)
  end
end

def measure(title, input_data, count, &block)
  input_string = input_data ? " (#{input_data.size}):" : ''
  printf "%-30s %s", title + input_string, Benchmark.measure {
    count.times { block.call(input_data) }
  }.to_s
end

def generate_input_data(size)
  Array.new(size) { rand(100000) }
end
