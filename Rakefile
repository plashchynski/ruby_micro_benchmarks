require File.dirname(__FILE__) + '/lib/ruby_micro_benchmarks'

task :default => :bench

desc "Run all the benchmarks"
task :bench do
  head
  ENV['FILE'] ? run_benchmark(ENV['FILE']) : run_benchmarks
end
