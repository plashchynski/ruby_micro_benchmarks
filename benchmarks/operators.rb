@count = 10_000_000

benchmark("@a ||= 1", nil, @count) do |array|
  @a ||= 1
end

benchmark("@a = @a || 1", nil, @count) do |array|
  @a = @a || 1
end

benchmark("@a || @a = 1", nil, @count) do |array|
  @a || @a = 1
end
