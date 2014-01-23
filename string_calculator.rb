def Add(input)
  return 0 if input == ""
  return input.to_i unless input[","]
  input.split(",").map(&:to_i).inject(:+)
end
