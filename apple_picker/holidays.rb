# Apple Picker

## Instructions

# 1) Create a method, `apple_picker`, that will pick all the 
#apples out of an array. Implement this only using `each`.


# apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]

#implement with select
def apple_picker(array)
  array.select {|item| item == "apple"}.compact
end

#implement with collect

def apple_picker2(array)
array.collect {|item| item if item == "apple"}.compact
end

#The #select method selects items from the array that satisfy the condition inside 
# the block. It does not transform the individual items, it only places each element that 
#satify the conditions into a new array. 
# Both methods return the new array, which may also contain 'nil's. 




# 2) Holiday Suppliers

# You have a bunch of decorations for various holidays organized by season.


holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

# ## Questions

# 1. How would you access the second supply for the forth_of_july?
holiday_supplies[:summer][:forth_of_july][1]

# 2. Add a supply to a Winter holiday.
holiday_supplies[:winter][:christmas][2] = "Tree"

# 3. Add a supply to memorial day.
holiday_supplies[:spring][:memorial_day][1] = "Grill"

# 4. Add a new holiday to any season with supplies.
holiday_supplies[:fall][:labor_day]= []


# 5. Write a method to collect all Winter supplies from all the winter holidays.
# ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`


def winter_suppliers(holiday_supplies)
  supplies = []
  holiday_supplies[:winter].each do |keys, value|
    value.each do |item|  
    supplies << item
    end
  end
  supplies
end
winter_suppliers(holiday_supplies)

# 6. Write a loop to list out all the supplies you have for each holiday and the season.

# Output:
# 
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats

def print_supplies(holiday_supplies)

  holiday_supplies.each do |keys, values|
    puts "#{keys}:"
      values.each do |key2, value2|
        print "#{key2}:"
        value_string = 
      end
  end
end





# 7. Write a method to collect all holidays with BBQ.

# `holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`









