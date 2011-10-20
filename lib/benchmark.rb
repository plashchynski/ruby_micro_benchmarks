require 'benchmark'

def head
  $stderr.puts RUBY_DESCRIPTION
  $stderr.printf "%-35s user     system      total        real\n", ''
end

def run_benchmarks
  ['array', 'string', 'operators', 'hash'].each do |file|
    run_benchmark File.dirname(__FILE__) + "/../benchmarks/#{file}"
  end
end

def run_benchmark(file)
  require file
end

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
  $stderr.printf "%-30s ", title + input_string
  $stderr.puts Benchmark.measure {
    count.times { block.call(input_data) }
  }.to_s
end

def generate_input_data(size)
  Array.new(size) { rand(100000) }
end
