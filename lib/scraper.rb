class Scraper

  attr_reader :weather, :zip, :domain

  def initialize(zip)
    @zip = zip.to_s
    @domain = "http://www.weather.gov/#{@zip}"
    @weather = Weather.new
    self.scraper
  end

  def scraper
    html = Nokogiri::HTML(open(@domain))
    begin
        weather.location = html.css("#seven-day-forecast h2").text.lstrip.rstrip
        weather.last_update = html.css("#current_conditions_detail tr td")[11].text.lstrip.rstrip
        weather.now_weather = html.css(".myforecast-current").text
        weather.now_temp = html.css(".myforecast-current-lrg").text
        weather.wind = html.css("#current_conditions_detail tr td")[3].text.lstrip.rstrip
        weather.humidity = html.css("#current_conditions_detail tr td")[1].text.lstrip.rstrip
        weather.today_weather = html.css(".tombstone-container")[0].css(".short-desc").text
        weather.today_high = html.css(".tombstone-container")[0].css(".temp.temp-high").text[-5..-1]
        weather.today_low = html.css(".tombstone-container")[1].css(".temp.temp-low").text[-5..-1]
        weather.tomorrow_weather = html.css(".tombstone-container")[2].css(".short-desc").text
        weather.tomorrow_high = html.css(".tombstone-container")[2].css(".temp.temp-high").text[-5..-1]
        weather.tomorrow_low = html.css(".tombstone-container")[3].css(".temp.temp-low").text[-5..-1]
        weather.two_day_weather = html.css(".tombstone-container")[4].css(".short-desc").text
        weather.two_day_high = html.css(".tombstone-container")[4].css(".temp.temp-high").text[-5..-1]
        weather.two_day_low = html.css(".tombstone-container")[5].css(".temp.temp-low").text[-5..-1]
        weather.three_day_weather = html.css(".tombstone-container")[6].css(".short-desc").text
        weather.three_day_high = html.css(".tombstone-container")[6].css(".temp.temp-high").text[-5..-1]
        weather.three_day_low = html.css(".tombstone-container")[7].css(".temp.temp-low").text[-5..-1]
        weather.four_day_weather = html.css(".tombstone-container")[8].css(".short-desc").text
        weather.four_day_high = html.css(".tombstone-container")[8].css(".temp.temp-high").text[-5..-1]
    rescue
        weather.invalid_zip = true
    end
  end
end