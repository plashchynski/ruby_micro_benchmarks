Ruby micro benchmarks
--------------------
Ruby micro benchmarks is a small suite to measure performance of simple Ruby methods and operators.
Created in order to answer questions like what is faster array[0] or array.first, 'string' or "string", 'a: ' << a << 'b: ' << b or "a: #{a} b: #{b}". Results of these benchmarks are sometimes unexpected and interesting.

### Install

    gem install ruby_micro_benchmarks

Also from sources:

    git clone git://github.com/plashchynski/ruby_micro_benchmarks.git


### Running
If you installed the gem, run:

    ruby_micro_benchmarks

If you have the sources, run "rake" in the source directory. You can specify certain file to run:

    rake FILE=./benchmarks/operators.rb



### Copyright

Copyright (c) 2011 Dzmitry Plashchynski. See LICENSE for details.
