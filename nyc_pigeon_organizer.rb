def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
      value.each do |property, names|
          names.each do |name|
              if !new_hash[name]
                  new_hash[name] = Hash.new
              end

              if !new_hash[name][key]
                  new_hash[name][key] = Array.new
              end

              new_hash[name][key] << property.to_s
          end
      end
  end
new_hash
end
