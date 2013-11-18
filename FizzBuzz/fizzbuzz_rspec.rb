require './fizzbuzz_refactor'
#to write a test in rspec
# describe Class, "method" do |variable|
	
# 	if description do
# 		expect().to eq()
# end

#or could write

#if description do
# XXX.should eq (XXX)
# end

#need to be clear in your mind what will come out. 
#I expect my program code (with a particular input) to give a certain value
#e.g. 
#fizzbuzz(75) = "fizzbuzz"
#fizzbuzz(13) = 13
#fizzbuzz(10) = "buzz"

describe "fizzbuzz" do

	 it "should return Fizzbuzz when number mod 15 = 0" do
	 	expect(fizzbuzz(75)).to eq("Fizzbuzz")
	 end

	 it "should return Fizz when the number mod 3 = 0" do
	 	expect(fizzbuzz(9)).to eq("Fizz")
	 end

	 it "should return Buzz when number mod 5 = 0" do
	 	expect(fizzbuzz(10)).to eq("Buzz")
	 end

	 it "should return number when number does not satisfy any of the above" do
	 	expect(fizzbuzz(13)).to eq(13)
	 end

end