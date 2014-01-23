def Add(input)
  return 0 if input == ""
  return input.to_i unless input[","]
end
