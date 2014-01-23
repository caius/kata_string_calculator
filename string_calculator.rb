def Add(input)
  return 0 if input == ""
  input.split(/(?:,|\n)/).map(&:to_i).inject(:+)
end
