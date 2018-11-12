require 'pry'
def nyc_pigeon_organizer(data)
  ret_hash = {}
  data.each do |attributes_keys, attribute_hash|
    attribute_hash.each do |specifics, name_array|
      name_array.each do |name|
        if !ret_hash.has_key?(name)
          ret_hash[name] = {attributes_keys => [specifics.to_s]}
          binding.pry
        elsif !ret_hash[name].has_key?(attributes_keys)
          ret_hash[name][attributes_keys] = specifics.to_s
        end
      end
    end
  end
  ret_hash
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)