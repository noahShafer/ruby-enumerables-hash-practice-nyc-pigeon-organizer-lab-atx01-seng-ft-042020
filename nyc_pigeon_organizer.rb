def nyc_pigeon_organizer(data)
  data.reduce({}) do |memo, (key, value)| 
    value.each {|k, v| 
      v.each {|e| 
        memo[e] = memo[e] != nil ? memo[e] : {}
        memo[e][key] = k.to_s
      }
    }
    memo
  end
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
p nyc_pigeon_organizer(pigeon_data)
