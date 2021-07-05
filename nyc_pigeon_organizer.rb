def nyc_pigeon_organizer(data)
  # write your code here!
  resultHash = {}
  result2Hash ={}
  tempHash={}
  keyupdater =""
  keyupdater2 =""
  keyupdater3 =""
  newArray = []
  
  data.each do |(key,value)|
    keyupdater = key
    value.each do |(key2,value2)|
      keyupdater2 =key2
      value2.each do |thisvalue2|
        if !!!resultHash[thisvalue2]
          keyupdater3 = keyupdater2.to_s 
          newArray.push(keyupdater3);
        else
          if resultHash[thisvalue2][keyupdater] == nil
          result2Hash = resultHash[thisvalue2];
          keyupdater3 = keyupdater2.to_s 
          newArray.push(keyupdater3);
          else
            newArray = resultHash[thisvalue2][keyupdater]
            keyupdater3 = keyupdater2.to_s 
            newArray.push(keyupdater3);
          end
        end
        result2Hash[keyupdater] =newArray;
        resultHash[thisvalue2] = result2Hash
        newArray =[];
        result2Hash ={};
      end
    end
  end
  resultHash
end
