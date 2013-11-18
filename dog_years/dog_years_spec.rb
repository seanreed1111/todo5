require './dog_years.rb'

new_dog = Dog.new

describe Dog, "#age_in_days" do
	it "should return 365*age when age is given in years" do
	 	expect(365*new_dog.age).to eq(new_dog.age_in_days)
	 end
	
end

describe Dog, "#age_in_years" do
	it "should return age" do
	 	expect(new_dog.age).to eq(new_dog.age_in_years)
	 end
	
end

describe Dog, "#age_in_dog_years" do
	it "should return 7 * age" do
	 	expect(7*new_dog.age).to eq(new_dog.age_in_dog_years)
	 end
	
end