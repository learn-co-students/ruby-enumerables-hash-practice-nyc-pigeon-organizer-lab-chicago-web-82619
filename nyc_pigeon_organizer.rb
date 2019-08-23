def nyc_pigeon_organizer(data)
  data.reduce({}) { |hash, (features, values)|
    values.reduce(hash) { |hash, (feature, pigeons)|
      pigeons.each { |pigeon|
        if !hash[pigeon]
          hash[pigeon] = {}
        end
        if hash[pigeon][features]
          hash[pigeon][features].push("#{feature}")
        else
          hash[pigeon][features] = ["#{feature}"]
        end
        hash
      }
      hash
    }
    hash
  }
end
