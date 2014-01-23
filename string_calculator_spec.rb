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

  [
    ["three", "5,7,10", 22],
    ["seven", "1,2,129,39,29,1,4", 205],
    ["twenty", "1,2,3,41,2,12,54,4,6,35,6,23,12,32,2,22,5,53,9,29", 353],
  ].each do |(number, list, expected)|
    describe "with #{number} numbers" do
      it "returns the sum of all numbers" do
        expect(Add(list)).to eql(expected)
      end
    end
  end

end
