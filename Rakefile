task :default => :bench

desc "Run all the benchmarks"
task :bench do
  puts RUBY_DESCRIPTION
  printf "%-35s user     system      total        real\n", ''
  require File.dirname(__FILE__) + '/lib/benchmark'

  if ENV['FILE']
    require ENV['FILE']
  else
    ['array', 'string', 'operators', 'hash'].each do |file|
      require File.dirname(__FILE__) + "/benchmarks/#{file}"
    end
  end
end
