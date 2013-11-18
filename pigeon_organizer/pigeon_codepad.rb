pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 

new_pigeon_hash = {}
# in new_pigeon_hash, color should be and array of strings
#keys are :color, :gender, and :lives

puts "Printing genders .."
pigeon_data[:gender].each do |key, value|
  puts "key is #{key} and value is #{value}"

end

puts "printing colors.."
pigeon_data[:color].each do |key, value|
  puts "key is #{key} and value is #{value}"

end

puts "printing lives.."
pigeon_data[:lives].each do |key, value|
  puts "key is #{key} and value is #{value}"

end


names = []

pigeon_data.each_value do |value|
    if value.kind_of?(String)
      names << value

    else 
      value.each do |inner_value|
        if inner_value.kind_of?(String)
          names << inner_value

        else 
          inner_value.each_value do |innner_inner_value|
          names << innner_inner_value
          end
        end
      end
    end
end

puts names

#the values of all of these loops are what need to be indexed
#they are in an array, so you need one more each to get the new keys

# puts " the :color data is #{pigeon_data[:color]}"
# puts " the :gender data is #{pigeon_data[:gender]}"
# puts " the :lives data is #{pigeon_data[:lives]}"

# puts " the :purple data is #{pigeon_data[:color][:purple]}"
# puts " the :grey data is #{pigeon_data[:color][:grey]}"
# puts " the :white data is #{pigeon_data[:color][:white]}"
# puts " the :brown data is #{pigeon_data[:color][:brown]}"

# puts " the :male data is #{pigeon_data[:gender][:male]}"
# puts " the :female data is #{pigeon_data[:gender][:female]}"



