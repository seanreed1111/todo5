require './yahtzee.rb'

new_yahtzee = Yahtzee.new
ones = [1,1,1,1,1]
describe Yahtzee, "#roll_dice" do
	it "should return an array with five number" do
	 	expect(new_yahtzee.roll_dice.length).to eq(5)
	 end

	it "should have all elements of the array greater than or equal to 1" do
	expect(new_yahtzee.roll_dice.min).to be >=1
	end

	it "should have all elements of the array less than or equal to 6" do
	expect(new_yahtzee.roll_dice.min).to be <= 6
	end

end

describe Yahtzee, "#win?" do
	it "should be true if all dice are have value of 1" do
	expect(win?(ones)).to be true
	end

	# it "should be true if all dice are have value of 2" do
	# expect(win?([2,2,2,2,2])).to be true
	# end
	# it "should be true if all dice are have value of 3" do
	# expect(win?([3,3,3,3,3])).to be true
	# end
	# it "should be true if all dice are have value of 4" do
	# expect(win?([4,4,4,4,4])).to be true
	# end
	# it "should be true if all dice are have value of 5" do
	# expect(win?([5,5,5,5,5])).to be true
	# end
	# it "should be true if all dice are have value of 6" do
	# expect(win?([6,6,6,6,6])).to be true
	# end
end



# class Yahtzee
 
#   def roll_dice
#     Array.new(5) { rand(1..6) }
#   end
 
#   def win? roll
#     roll.uniq.length == 1 ? true : false
#   end
 
# end