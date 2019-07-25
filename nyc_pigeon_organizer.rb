def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_list = {}
  
  data.each do |quality, types|
    types.each do |type, pigeon_names| 
      pigeon_names.each do |name|
        
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        
        if !pigeon_list[name][quality]
          pigeon_list[name][quality] = []
        end
        
        pigeon_list[name][quality].push(type.to_s)
        
        
        
      end
     
      end
    
    end
  
  return pigeon_list
  
  
  
end
