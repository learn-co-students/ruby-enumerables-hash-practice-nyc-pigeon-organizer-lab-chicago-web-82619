def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !hash[name]
          hash[name] = {}
        end

        if !hash[name][key]
          hash[name][key] = []
        end

        hash[name][key] << new_value.to_s

      end
    end
  end
  hash
end