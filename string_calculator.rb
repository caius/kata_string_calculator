def Add(input)
  numbers = input.match(%r{\A(?:\/\/(.|\[.+\])\n)?(.+)\z}m) do |match|
    _, delim, str = match.to_a
    delim = delim[1..-2] if delim && delim[/\[.+\]/]
    delim ||= /(?:,|\n)/
    str.split(delim).map(&:to_i)
  end

  return 0 unless numbers

  if (( negatives = numbers.reject {|i| i.abs == i } )).any?
    raise "negative numbers not allowed: #{negatives.join(", ")}"
  end

  numbers.reject {|i| i >= 1000 }.inject(:+)
end
