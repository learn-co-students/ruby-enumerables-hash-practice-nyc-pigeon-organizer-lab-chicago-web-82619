require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each { |attribute|
    attribute[1].each { |name|
      pigeon_list[name] = {
        :color => [],
        :gender => [],
        :lives => []
      }
    }
  }
  
  data.each { |data|
    data[1].each { |item|
      item[1].each { |pigeon|
        if pigeon_list.keys.include?(pigeon)
          pigeon_list[pigeon][data[0]].push(item[0].to_s)
        end
      }
    }
  }
  
  pigeon_list
  
end
