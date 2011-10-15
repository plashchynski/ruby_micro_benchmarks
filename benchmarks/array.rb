@input_data = [0,1000,10_000]
@count = 100_000

benchmark("[].first", @input_data, @count) do |array|
  array.first
end

benchmark("[][0]", @input_data, @count) do |array|
  array[0]
end

benchmark("[].last", @input_data, @count) do |array|
  array.first
end

benchmark("[][-1]", @input_data, @count) do |array|
  array[-1]
end
