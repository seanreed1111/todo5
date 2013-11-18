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
#note each_pair === each
 
new_pigeon = {}
pigeon_data.each_pair do |key, value|
  value.each_pair do |attribute, name_array| #attribute is color, gender, or lives
    name_array.each do |name|
      if new_pigeon[name].nil?
        new_pigeon[name] = {}
      end

      if new_pigeon[name][:color].nil?
        new_pigeon[name][:color] = []
      end

      if key == :color
        new_pigeon[name][key] << attribute
      else
        new_pigeon[name][key] = attribute
      end

    end
  end
end

puts pigeon_data
puts

puts new_pigeon
