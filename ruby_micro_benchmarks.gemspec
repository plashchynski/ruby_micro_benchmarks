Gem::Specification.new do |s|
  s.name        = 'ruby_micro_benchmarks'
  s.version     = '0.1.1'
  s.date        = '2011-10-22'
  s.summary     = "Ruby micro benchmarks"
  s.description = "A set of Ruby benchmarks to test Ruby methods and operators performance."
  s.authors     = ["Dzmitry Plashchynski"]
  s.email       = 'plashchynski@gmail.com'
  s.homepage    = 'http://github.com/plashchynski/ruby-micro-benchmarks'
  s.files       = ["lib/ruby_micro_benchmarks.rb", "benchmarks/array.rb", "benchmarks/hash.rb", "benchmarks/operators.rb", "benchmarks/string.rb",
    "bin/ruby_micro_benchmarks"]
  s.executables << 'ruby_micro_benchmarks'
end
