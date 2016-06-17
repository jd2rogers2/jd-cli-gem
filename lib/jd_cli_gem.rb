class Cli
  attr_accessor :scraper
  attr_reader :weather

  def initialize
    run
  end

  def run
    puts "welcome to my command line weather gem"
    get_zip
    options_stage_1
    what_to_do_stage_1
  end

  def get_zip
    puts "to start i'll need your zip"
    input = gets.chomp
    if input.count("0" "1" "2" "3" "4" "5" "6" "7" "8" "9") == 5
      @weather = Scraper.new(input).weather
      if @weather.invalid_zip == true
        puts "Sorry, that is not a valid U.S. zip"
        get_zip
      else
        puts "thanks for the zip"
      end
    else
      puts "a valid zip is 5 sequential numbers, please try again"
      get_zip
    end
  end

  def options_stage_1
    puts "welcome to the main screen"
    puts "here's what you can do"
    puts "you can type:"
    puts "'location' - to see which zip you are currently checking the weather of"
    puts "'last update' - to see when the latest update was"
    puts "'today' - to see today's weather options"
    puts "'tomorrow' - to see tomorrow's weather options" 
    puts "'2 days' - to see weather options for 2 days from now"   
    puts "'3 days' - to see weather options for 3 days from now" 
    puts "'4 days' - to see weather options for 4 days from now"
    puts "'change zip' - to change to another zip"
    puts "'exit' - to leave"
  end

  def what_to_do_stage_1
    puts "what would you like to do?"
    input = gets.chomp
    if input == "exit"
      puts "goodbye"
    elsif input == "location"
      puts weather.location
      what_to_do_stage_1
    elsif input == "last update"
      puts weather.last_update
      what_to_do_stage_1
    elsif input == "change zip"
      get_zip
      options_stage_1
      what_to_do_stage_1
    elsif input == "today"
      options_today
      what_to_do_today
    elsif input == "tomorrow"
      options_tomorrow
      what_to_do_tomorrow
    elsif input == "2 days"
      options_2_days
      what_to_do_2_days
    elsif input == "3 days"
      options_3_days
      what_to_do_3_days
    elsif input == "4 days"
      options_4_days
      what_to_do_4_days
    else
      puts "invalid input"
      what_to_do_stage_1
    end
  end

  def options_today
    puts "here are your options for today's weather"
    puts "'humidity' - to see the current humidity for your zip"
    puts "'wind' - to see the current wind for your zip"
    puts "'weather' - to see the current weather for your zip"
    puts "'temperature' - to see the current temperature for your zip"
    puts "'today high' - to see the expected high for today"
    puts "'today low' - to see the expected low for today"
    puts "'back' - to return to the main screen"
  end

  def what_to_do_today
    puts "what would you like to know about today's weather?"
    input = gets.chomp
    if input == "humidity"
      puts weather.humidity
      what_to_do_today
    elsif input == "wind"
      puts weather.wind
      what_to_do_today
    elsif input == "weather"
      puts weather.now_weather
      what_to_do_today
    elsif input == "temperature"
      puts weather.now_temp
      what_to_do_today
    elsif input == "today high"
      puts weather.today_high
      what_to_do_today
    elsif input == "today low"
      puts weather.today_low
      what_to_do_today
    elsif input == "back"
      options_stage_1
      what_to_do_stage_1
    else
      puts "invalid input"
      what_to_do_today
    end
  end

  def options_tomorrow
    puts "here are your options for tomorrow's weather"
    puts "'tomorrow weather' - to see the expected weather for tomorrow"
    puts "'tomorrow high' - to see the expected high for tomorrow"
    puts "'tomorrow low' - to see the expected low for tomorrow"
    puts "'back' - to return to the main screen"
  end

  def what_to_do_tomorrow
    puts "what would you like to know about tomorrow's weather?"
    input = gets.chomp
    if input == "tomorrow weather"
      puts weather.tomorrow_weather
      what_to_do_tomorrow
    elsif input == "tomorrow high"
      puts weather.tomorrow_high
      what_to_do_tomorrow
    elsif input == "tomorrow low"
      puts weather.tomorrow_low
      what_to_do_tomorrow
    elsif input == "back"
      options_stage_1
      what_to_do_stage_1
    else
      puts "invalid input"
      what_to_do_today
    end
  end

  def options_2_days
    puts "here are your options for the weather 2 days from now"
    puts "'2 days weather' - to see the expected weather for 2 days from now"
    puts "'2 days high' - to see the expected high for 2 days from now"
    puts "'2 days low' - to see the expected low for 2 days from now"
    puts "'back' - to return to the main screen"
  end

  def what_to_do_2_days
    puts "what would you like to know about the weather 2 days from now?"
    input = gets.chomp
    if input == "2 days weather"
      puts weather.two_day_weather
      what_to_do_2_days
    elsif input == "2 days high"
      puts weather.two_day_high
      what_to_do_2_days
    elsif input == "2 days low"
      puts weather.two_day_low
      what_to_do_2_days
    elsif input == "back"
      options_stage_1
      what_to_do_stage_1
    else
      puts "invalid input"
      what_to_do_today
    end
  end

  def options_3_days
    puts "here are your options for the weather 3 days from now"
    puts "'3 days weather' - to see the expected weather for 3 days from now"
    puts "'3 days high' - to see the expected high for 3 days from now"
    puts "'3 days low' - to see the expected low for 3 days from now"
    puts "'back' - to return to the main screen"
  end

  def what_to_do_3_days
    puts "what would you like to know about the weather 3 days from now?"
    input = gets.chomp
    if input == "3 days weather"
      puts weather.three_day_weather
      what_to_do_3_days
    elsif input == "3 days high"
      puts weather.three_day_high
      what_to_do_3_days
    elsif input == "3 days low"
      puts weather.three_day_low
      what_to_do_3_days
    elsif input == "back"
      options_stage_1
      what_to_do_stage_1
    else
      puts "invalid input"
      what_to_do_today
    end
  end

  def options_4_days
    puts "here are your options for the weather 4 days from now"
    puts "'4 days weather' - to see the expected weather for 4 days from now"
    puts "'4 days high' - to see the expected high for 4 days from now"
    puts "'back' - to return to the main screen"
  end

  def what_to_do_4_days
    puts "what would you like to know about the weather 4 days from now?"
    input = gets.chomp
    if input == "4 days weather"
      puts weather.four_day_weather
      what_to_do_4_days
    elsif input == "4 days high"
      puts weather.four_day_high
      what_to_do_4_days     
    elsif input == "back"
      options_stage_1
      what_to_do_stage_1
    else
      puts "invalid input"
      what_to_do_today
    end
  end

end