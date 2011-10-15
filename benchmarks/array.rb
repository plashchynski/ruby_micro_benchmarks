@input_data = [0,1000,10_000]
@count = 100_000

benchmark("array.first", @input_data, @count) do |array|
  array.first
end

benchmark("array[0]", @input_data, @count) do |array|
  array[0]
end

benchmark("array.last", @input_data, @count) do |array|
  array.last
end

benchmark("array[-1]", @input_data, @count) do |array|
  array[-1]
end

benchmark("array.map(&:to_i)", [0,100,1000], @count) do |array|
  array.map(&:to_i)
end

benchmark("array.map{|n| n.to_i }", [0,100,1000], @count) do |array|
  array.map{|n| n.to_i }
end

benchmark("[]", nil, @count) do |array|
  []
end

benchmark("Array.new", nil, @count) do |array|
  Array.new
end
