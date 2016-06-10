class Scraper

  attr_accessor :zip, :zip_hash, :domain, :location, :last_update
  attr_accessor :humidity, :wind
  attr_accessor :now_weather, :today_high, :today_low, :now_temp
  attr_accessor :tomorrow_weather, :tomorrow_high, :tomorrow_low
  attr_accessor :two_day_weather, :two_day_high, :two_day_low
  attr_accessor :three_day_weather, :three_day_high, :three_day_low
  attr_accessor :four_day_weather, :four_day_high

  def initialize(zip)
    @zip = zip.to_s
    @domain = "http://www.weather.gov/#{@zip}"
    scraper
  end

  def scraper
    html = Nokogiri::HTML(open(@domain))
    @location = html.css("#seven-day-forecast h2").text.lstrip.rstrip
    @last_update = html.css("#current_conditions_detail tr td")[11].text.lstrip.rstrip
    @now_weather = html.css(".myforecast-current").text
    @now_temp = html.css(".myforecast-current-lrg").text
    @wind = html.css("#current_conditions_detail tr td")[3].text.lstrip.rstrip
    @humidity = html.css("#current_conditions_detail tr td")[1].text.lstrip.rstrip
    @today_weather = html.css(".tombstone-container")[0].css(".short-desc").text
    @today_high = html.css(".tombstone-container")[0].css(".temp.temp-high").text[-5..-1]
    @today_low = html.css(".tombstone-container")[1].css(".temp.temp-low").text[-5..-1]
    @tomorrow_weather = html.css(".tombstone-container")[2].css(".short-desc").text
    @tomorrow_high = html.css(".tombstone-container")[2].css(".temp.temp-high").text[-5..-1]
    @tomorrow_low = html.css(".tombstone-container")[3].css(".temp.temp-low").text[-5..-1]
    @two_day_weather = html.css(".tombstone-container")[4].css(".short-desc").text
    @two_day_high = html.css(".tombstone-container")[4].css(".temp.temp-high").text[-5..-1]
    @two_day_low = html.css(".tombstone-container")[5].css(".temp.temp-low").text[-5..-1]
    @three_day_weather = html.css(".tombstone-container")[6].css(".short-desc").text
    @three_day_high = html.css(".tombstone-container")[6].css(".temp.temp-high").text[-5..-1]
    @three_day_low = html.css(".tombstone-container")[7].css(".temp.temp-low").text[-5..-1]
    @four_day_weather = html.css(".tombstone-container")[8].css(".short-desc").text
    @four_day_high = html.css(".tombstone-container")[8].css(".temp.temp-high").text[-5..-1]

    @zip_hash = {:location => @location, 
                 :last_update => @last_update, 
                 :now_weather => @now_weather, 
                 :today_high => @today_high, 
                 :today_low => @today_low, 
                 :now_temp => @now_temp, 
                 :humidity => @humidity, 
                 :wind => @wind, 
                 :tomorrow_weather => @tomorrow_weather, 
                 :tomorrow_high => @tomorrow_high, 
                 :tomorrow_low => @tomorrow_low, 
                 :two_day_weather => @two_day_weather, 
                 :two_day_high => @two_day_high, 
                 :two_day_low => @two_day_low, 
                 :three_day_weather => @three_day_weather, 
                 :three_day_high => @three_day_high, 
                 :three_day_low => @three_day_low, 
                 :four_day_weather => @four_day_weather, 
                 :four_day_high => @four_day_high}
  end
end