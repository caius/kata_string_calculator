def Add(input)
  input.match(%r{(?:\A//(.)\n)?(.+)\z}m) do |match|
    _, delim, str = match.to_a
    delim ||= /(?:,|\n)/
    str.split(delim).map(&:to_i).inject(:+)
  end || 0
end
