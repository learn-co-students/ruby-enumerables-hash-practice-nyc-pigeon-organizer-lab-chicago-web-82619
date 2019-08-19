require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  # data[:lives].each do |el, i|
    
  #   i.each do |name|
  #     pigeons[name] = {:color => [], :gender => [], :lives => []}
      
  #   end
  # end
  
  # data.values.each do |el|
  #   el.each do |i|
  #     pigeons.keys.each do |name|
        
  #       if i[1].include?(name)
  #         pigeons[name][data.keys[0]].push(i.first.to_s)
          
  #       end
  #     end
  #   end
  # end
  data.each do |keys, values|
    values.each do |val, arr|
      arr.each do |name|
        if pigeons[name] == nil
          pigeons[name] = {}
          pigeons[name][keys] = []
        else
          pigeons[name][keys] = []
        end
      end
    end
  end
  
  pigeons.each do |name,values|
    values.each do |pigeon_value,arr|
      data.each do |color_gender_lives,vals|
        vals.each do |val, array|
          array.each do |el|
            if el == name && pigeon_value == color_gender_lives
              pigeons[name][pigeon_value].push(val.to_s)
            end
          end
        end
      end
    end
  end
  pigeons
end
