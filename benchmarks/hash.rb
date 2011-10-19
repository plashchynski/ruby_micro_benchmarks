@count = 1_000_000

hash = {'a' => 1}

benchmark("hash['a']", nil, @count) do |array|
  hash['a']
end

hash = {:a => 1}

benchmark("hash[:a]", nil, @count) do |array|
  hash[:a]
end

hash = {:a => 9**10000}

benchmark("if hash[:a]", nil, @count) do |array|
  if hash[:a]
  end
end

benchmark("if hash.has_key? :a", nil, @count) do |array|
  if hash.has_key? :a
  end
end
