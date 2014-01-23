def Add(input)
  return 0 if input == ""
  input.split(",").map(&:to_i).inject(:+)
end
