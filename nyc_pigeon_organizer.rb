require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  data[:lives].each do |el, i|
    i.each do |name|
      pigeons[name] = {:color => [], :gender => [], :lives => []}
    end
  end
  
  data.values.each do |el|
    el.each do |i|
      pigeons.keys.each do |name|
        if i[1].include?(name)
          pigeons[name][data.keys[0]].push(i.first.to_s)
          
        end
      end
    end
  end
  binding.pry
  pigeons
end
