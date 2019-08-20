require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}

  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !pigeons[name]
          pigeons[name] = {}
        end
        
        if !pigeons[name][key]
          pigeons[name][key] = []
        end
        
        pigeons[name][key].push(new_value.to_s)
      end
    end
  end
  pigeons
end
