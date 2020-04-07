def nyc_pigeon_organizer(data)
  data.reduce({}) do |memo, (key, value)| 
    value.each {|k, v| 
      v.each {|e| 
        memo[e] = memo[e] != nil ? memo[e] : {}
        memo[e][key] = memo[e][key] != nil ? memo[e][key] : []
        memo[e][key].append(k.to_s)
      }
    }
    memo
  end
end
