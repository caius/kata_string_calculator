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
      expect(Add("1")).to eql(1)
      expect(Add("5")).to eql(5)
    end
  end

  describe "with two numbers" do
    it "returns the sum of the numbers" do
      expect(Add("1,2")).to eql(3)
      expect(Add("2,5")).to eql(7)
    end
  end
end
