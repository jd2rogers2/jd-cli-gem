class Cli
  attr_accessor :scraper
  attr_reader :weather_hash

  def initialize
    run
  end

  def run
    puts "welcome to my command line weather gem"
    get_zip
    options
    what_would_you_like_to_do
  end

  def get_zip
    puts "to start i'll need your zip"
    input = gets.chomp
    if input.count("0" "1" "2" "3" "4" "5" "6" "7" "8" "9") == 5
      @scraper = Scraper.new(input)
      @scraper.scraper
    else
      puts "invalid zip"
      get_zip
    end
  end

  def weather_hash
    @scraper.zip_hash
  end

  def options
    puts "thanks for the zip, now here's what you can do"
    puts "you can type:"
    puts "'location' - to see which zip you are currently checking the weather of"
    puts "'last update' - to see when the latest update was"
    puts "'humidity' - to see the current humidity for your zip"
    puts "'wind' - to see the current wind for your zip"
    puts "'weather' - to see the current weather for your zip"
    puts "'temperature' - to see the current temperature for your zip"
    puts "'today high' - to see the expected high for today"
    puts "'today low' - to see the expected low for today"
    puts "'tomorrow weather' - to see the expected weather for tomorrow"
    puts "'tomorrow high' - to see the expected high for tomorrow"
    puts "'tomorrow low' - to see the expected low for tomorrow"
    puts "'2 days weather' - to see the expected weather for 2 days from now"
    puts "'2 days high' - to see the expected high for 2 days from now"
    puts "'2 days low' - to see the expected low for 2 days from now"
    puts "'3 days weather' - to see the expected weather for 3 days from now"
    puts "'3 days high' - to see the expected high for 3 days from now"
    puts "'3 days low' - to see the expected low for 3 days from now"
    puts "'4 days weather' - to see the expected weather for 4 days from now"
    puts "'4 days high' - to see the expected high for 4 days from now"
    puts "'change zip' - to change to another zip"
    puts "'exit' - to leave"
  end

  def what_would_you_like_to_do
    puts "what would you like to do?"
    input = gets.chomp
    if input == "exit"
      puts "goodbye"
    elsif input == "location"
      puts weather_hash[:location]
      what_would_you_like_to_do
    elsif input == "last update"
      puts weather_hash[:last_update]
      what_would_you_like_to_do
    elsif input == "humidity"
      puts weather_hash[:humidity]
      what_would_you_like_to_do
    elsif input == "wind"
      puts weather_hash[:wind]
      what_would_you_like_to_do
    elsif input == "weather"
      puts weather_hash[:now_weather]
      what_would_you_like_to_do
    elsif input == "temperature"
      puts weather_hash[:now_temp]
      what_would_you_like_to_do
    elsif input == "today high"
      puts weather_hash[:today_high]
      what_would_you_like_to_do
    elsif input == "today low"
      puts weather_hash[:today_low]
      what_would_you_like_to_do
    elsif input == "tomorrow weather"
      puts weather_hash[:tomorrow_weather]
      what_would_you_like_to_do
    elsif input == "tomorrow high"
      puts weather_hash[:tomorrow_high]
      what_would_you_like_to_do
    elsif input == "tomorrow low"
      puts weather_hash[:tomorrow_low]
      what_would_you_like_to_do
    elsif input == "2 days weather"
      puts weather_hash[:two_day_weather]
      what_would_you_like_to_do
    elsif input == "2 days high"
      puts weather_hash[:two_day_high]
      what_would_you_like_to_do
    elsif input == "2 days low"
      puts weather_hash[:two_day_low]
      what_would_you_like_to_do
    elsif input == "3 days weather"
      puts weather_hash[:three_day_weather]
      what_would_you_like_to_do
    elsif input == "3 days high"
      puts weather_hash[:three_day_high]
      what_would_you_like_to_do
    elsif input == "3 days low"
      puts weather_hash[:three_day_low]
      what_would_you_like_to_do
    elsif input == "4 days weather"
      puts weather_hash[:four_day_weather]
      what_would_you_like_to_do
    elsif input == "4 days high"
      puts weather_hash[:four_day_high]
      what_would_you_like_to_do
    elsif input == "change zip"
      get_zip        
    else
      puts "invalid input"
      what_would_you_like_to_do
    end
  end

end