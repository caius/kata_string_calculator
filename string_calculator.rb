def Add(input)
  delimiters = []

  if input["//"]
    # We have delimiters present!
    delims, input = input.split("\n")
    delimiters.push *(delims["["] ? delims.scan(/\[(.+?)\]/).flatten : delims[3..-1])
  else
    delimiters << "," << "\n"
  end

  splitter = delimiters.map {|x| Regexp.escape(x) }.join("|")
  numbers = input.split(Regexp.new(splitter)).map(&:to_i)

  if (( negatives = numbers.reject {|i| i.abs == i } )).any?
    raise "negative numbers not allowed: #{negatives.join(", ")}"
  end

  numbers.reject {|i| i >= 1000 }.inject(0, :+)
end
