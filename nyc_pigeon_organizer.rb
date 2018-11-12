require 'pry'
def nyc_pigeon_organizer(data)
  ret_hash = {}
  data.each do |attributes_keys, attribute_hash|
    attribute_hash.each do |specifics, name_array|
      name_array.each do |name|
        if !ret_hash.has_key?(name)
          ret_hash[name] = {attributes_keys => [specifics.to_s]}
          ##binding.pry

        end
      end
    end
  end
  ret_hash
end
