class Records::RegionalOffice < ActiveRecord::Base
  self.table_name = "vacols.staff"
  self.primary_key = "stafkey"

  CITIES = {
    "RO01" => { city: "Boston", state: "MA", timezone: "America/New_York" },
    "RO02" => { city: "Togus", state: "ME", timezone: "America/New_York" },
    "RO04" => { city: "Providence", state: "RI", timezone: "America/New_York" },
    "RO05" => { city: "White River Junction", state: "VT", timezone: "America/New_York" },
    "RO06" => { city: "New York", state: "NY", timezone: "America/New_York" },
    "RO07" => { city: "Buffalo", state: "NY", timezone: "America/New_York" },
    "RO08" => { city: "Hartford", state: "CT", timezone: "America/New_York" },
    "RO09" => { city: "Newark", state: "NJ", timezone: "America/New_York" },
    "RO10" => { city: "Philadelphia", state: "PA", timezone: "America/New_York" },
    "RO11" => { city: "Pittsburgh", state: "PA", timezone: "America/New_York" },
    "RO13" => { city: "Baltimore", state: "MD", timezone: "America/New_York" },
    "RO14" => { city: "Roanoke", state: "VA", timezone: "America/New_York" },
    "RO15" => { city: "Huntington", state: "WV", timezone: "America/New_York" },
    "RO16" => { city: "Atlanta", state: "GA", timezone: "America/New_York" },
    "RO17" => { city: "St. Petersburg", state: "FL", timezone: "America/New_York" },
    "RO18" => { city: "Winston-Salem", state: "NC", timezone: "America/New_York" },
    "RO19" => { city: "Columbia", state: "SC", timezone: "America/New_York" },
    "RO20" => { city: "Nashville", state: "TN", timezone: "America/Chicago" },
    "RO21" => { city: "New Orleans", state: "LA", timezone: "America/Chicago" },
    "RO22" => { city: "Montgomery", state: "AL", timezone: "America/Chicago" },
    "RO23" => { city: "Jackson", state: "MS", timezone: "America/Chicago" },
    "RO25" => { city: "Cleveland", state: "OH", timezone: "America/New_York" },
    "RO26" => { city: "Indianapolis", state: "IN", timezone: "America/Indiana/Indianapolis" },
    "RO27" => { city: "Louisville", state: "KY", timezone: "America/Kentucky/Louisville" },
    "RO28" => { city: "Chicago", state: "IL", timezone: "America/Chicago" },
    "RO29" => { city: "Detroit", state: "MI", timezone: "America/New_York" },
    "RO30" => { city: "Milwaukee", state: "WI", timezone: "America/Chicago" },
    "RO31" => { city: "St. Louis", state: "MO", timezone: "America/Chicago" },
    "RO33" => { city: "Des Moines", state: "IA", timezone: "America/Chicago" },
    "RO34" => { city: "Lincoln", state: "NE", timezone: "America/Chicago" },
    "RO35" => { city: "St. Paul", state: "MN", timezone: "America/Chicago" },
    "RO36" => { city: "Ft. Harrison", state: "MT", timezone: "America/Denver" },
    "RO37" => { city: "Fargo", state: "ND", timezone: "America/Chicago" },
    "RO38" => { city: "Sioux Falls", state: "SD", timezone: "America/Chicago" },
    "RO39" => { city: "Denver", state: "CO", timezone: "America/Denver" },
    "RO40" => { city: "Albuquerque", state: "NM", timezone: "America/Chicago" },
    "RO41" => { city: "Salt Lake City", state: "UT", timezone: "America/Denver" },
    "RO42" => { city: "Cheyenne", state: "WY", timezone: "America/Denver" },
    "RO43" => { city: "Oakland", state: "CA", timezone: "America/Los_Angeles" },
    "RO44" => { city: "Los Angeles", state: "CA", timezone: "America/Los_Angeles" },
    "RO45" => { city: "Phoenix", state: "AZ", timezone: "America/Denver" },
    "RO46" => { city: "Seattle", state: "WA", timezone: "America/Los_Angeles" },
    "RO47" => { city: "Boise", state: "ID", timezone: "America/Boise" },
    "RO48" => { city: "Portland", state: "OR", timezone: "America/Los_Angeles" },
    "RO49" => { city: "Waco", state: "TX", timezone: "America/Chicago" },
    "RO50" => { city: "Little Rock", state: "AR", timezone: "America/Chicago" },
    "RO51" => { city: "Muskogee", state: "OK", timezone: "America/Chicago" },
    "RO52" => { city: "Wichita", state: "KS", timezone: "America/Chicago" },
    "RO54" => { city: "Reno", state: "NV", timezone: "America/Los_Angeles" },
    "RO55" => { city: "San Juan", state: "PR", timezone: "America/Puerto_Rico" },
    "RO58" => { city: "Manila", state: "PI", timezone: "Asia/Manila" },
    "RO59" => { city: "Honolulu", state: "HI", timezone: "Pacific/Honolulu" },
    "RO60" => { city: "Wilmington", state: "DE", timezone: "America/New_York" },
    "RO62" => { city: "Houston", state: "TX", timezone: "America/Chicago" },
    "RO63" => { city: "Anchorage", state: "AK", timezone: "America/Anchorage" },
    "RO73" => { city: "Manchester", state: "NH", timezone: "America/New_York" },
    "RO77" => { city: "San Diego", state: "CA", timezone: "America/Los_Angeles" },
    "DSUSER" => { city: "Digital Service HQ", state: "DC", timezone: "America/New_York" }
  }.freeze
  ROS = CITIES.keys.freeze
end
