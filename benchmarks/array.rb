INPUT_DATA = [0,1000,10_000]
COUNT = 100_000

benchmark("[].first", INPUT_DATA, COUNT) do |array|
  array.first
end

benchmark("[][0]", INPUT_DATA, COUNT) do |array|
  array[0]
end

benchmark("[].last", INPUT_DATA, COUNT) do |array|
  array.first
end

benchmark("[][-1]", INPUT_DATA, COUNT) do |array|
  array[-1]
end
