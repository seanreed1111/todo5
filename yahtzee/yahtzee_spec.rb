require './yahtzee.rb'

describe Yahtzee, "#win?" do
	it "should return Fizzbuzz when number mod 15 = 0" do
	 	expect(fizzbuzz(75)).to eq("Fizzbuzz")
	 end
	
end