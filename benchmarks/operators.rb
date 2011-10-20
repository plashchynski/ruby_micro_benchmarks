@count = 10_000_000

benchmark("@a ||= 1", nil, @count) do
  @a ||= 1
end

benchmark("@a = @a || 1", nil, @count) do
  @a = @a || 1
end

benchmark("@a || @a = 1", nil, @count) do
  @a || @a = 1
end

benchmark("unless true", nil, @count) do
  unless true
  end
end

benchmark("unless false", nil, @count) do
  unless false
  end
end

benchmark("if false", nil, @count) do
  unless true
  end
end

benchmark("if true", nil, @count) do
  unless false
  end
end

benchmark("not true", nil, @count) do
  not true
end

benchmark("!true", nil, @count) do
  !true
end

x = 0
benchmark("x += 1", nil, @count) do
  x += 1
end

benchmark("x = x + 1", nil, @count) do
  x = x + 1
end

benchmark("x = 1; z = 2", nil, @count) do
  x = 1; z = 2
end

benchmark("x,z = 1,2", nil, @count) do
  x,z = 1,2
end
