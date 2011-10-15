task :default => :bench

desc "Run all the benchmarks"
task :bench do
  puts RUBY_DESCRIPTION
  printf "%-35s user     system      total        real\n", ''
  require File.dirname(__FILE__) + '/lib/benchmark'
  require File.dirname(__FILE__) + '/benchmarks/array.rb'
  require File.dirname(__FILE__) + '/benchmarks/string.rb'
end
