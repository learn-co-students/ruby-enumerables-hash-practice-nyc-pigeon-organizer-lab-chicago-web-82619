def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |key1, value1|
    value1.each do |key2, value2|
      value2.each do |item|
        if pigeon_list.has_key?(item) == false
          pigeon_list[item] = {}
        end

        if pigeon_list[item].has_key?(key1)
          pigeon_list[item][key1] << key2.to_s
        else
          pigeon_list[item][key1] = [] << key2.to_s
        end
        
      end
    end
  end

  return pigeon_list
end
