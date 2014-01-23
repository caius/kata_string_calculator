def Add(input)
  input.split(/(?:,|\n)/).map(&:to_i).inject(:+) || 0
end
