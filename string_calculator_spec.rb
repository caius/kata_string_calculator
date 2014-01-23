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
end
