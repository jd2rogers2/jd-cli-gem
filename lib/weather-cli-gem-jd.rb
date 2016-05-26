require "pry"
require "Nokogiri"

class Weather

  attr_accessor :zip, :zip_hash, :domain, :location, :today, :time
  attr_accessor :weather_now, :high_today, :high_tonight, :temp_now
  attr_accessor :precipitation, :humidity, :wind
  attr_accessor :tomorrow_weather, :tomorrow_high, :tomorrow_low
  attr_accessor :two_day_weather, :two_day_high, :two_day_low
  attr_accessor :three_day_weather, :three_day_high, :three_day_low
  attr_accessor :four_day_weather, :four_day_high, :four_day_low
  attr_accessor :five_day_weather, :five_day_high, :five_day_low
  attr_accessor :six_day_weather, :six_day_high, :six_day_low
  attr_accessor :seven_day_weather, :seven_day_high, :seven_day_low

  def initialize(zip)
    @zip = zip
    @domain = "https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=weather+#{zip}"
  end

  def scraper
    html = Nokogiri::HTML(open(@domain))
#binding.pry
@zip_hash = {:location => ,
:today => ,
:time => ,
:weather_now => ,
:high_today => ,
:high_tonight => ,
:temp_now => ,
:precipitation => ,
:humidity => ,
:wind => ,
:tomorrow_weather => ,
:tomorrow_high => ,
:tomorrow_low => ,
:two_day_weather => ,
:two_day_high => ,
:two_day_low => ,
:three_day_weather => ,
:three_day_high => ,
:three_day_low => ,
:four_day_weather => ,
:four_day_high => ,
:four_day_low => ,
:five_day_weather => ,
:five_day_high => ,
:five_day_low => ,
:six_day_weather => ,
:six_day_high => ,
:six_day_low => ,
:seven_day_weather => ,
:seven_day_high => ,
:seven_day_low => }
  end

end