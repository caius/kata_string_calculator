require "rspec"
require_relative "string_calculator"

describe "Add" do
  describe "with an empty string" do
    it "returns 0" do
      expect(Add("")).to eql(0)
    end
  end

  describe "with one number" do
    it "returns the number" do
      expect(Add("2")).to eql(2)
    end
  end

  describe "with two numbers" do
    it "returns the sum of the numbers" do
      expect(Add("1,2")).to eql(3)
    end
  end

  describe "with seven numbers" do
    it "returns the sum of the numbers" do
      expect(Add("1,2,129,39,29,1,4")).to eql(205)
    end
  end

  describe "with newline delimited numbers" do
    it "returns the sum of the numbers" do
      expect(Add("1\n2")).to eql(3)
    end
  end

  describe "with arbitrary delimited numbers" do
    it "returns the sum of the numbers" do
      expect(Add("//;\n1;2")).to eql(3)
    end
  end

  describe "with single negative number" do
    it "throws an error containing that number" do
      expect { Add("1,2,-3,4") }.to raise_error(RuntimeError, "negative numbers not allowed: -3")
    end
  end

  describe "with multiple negative numbers" do
    it "throws an error containing all those numbers" do
      expect { Add("-1,2,-3,-4") }.to raise_error(RuntimeError, "negative numbers not allowed: -1, -3, -4")
    end
  end

  describe "with numbers larger than a thousand" do
    it "sums all numbers lower than a thousand" do
      expect(Add("1,1005,2,1000")).to eql(3)
    end
  end

  describe "with multiple character delimiters" do
    it "sums all numbers successfully" do
      expect(Add("//[***]\n1***2***3")).to eql(6)
    end
  end
end
