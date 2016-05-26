% cat weather-cli-gem-jd.gemspec

Gem::Specifications.new do |weather|
  weather.name          =  "weather-gem-cli-jd"
  weather.version       =  "0.0.0"
  weather.date          =  "26 May 2016"
  weather.summary       =  "oh weather outside is weather"
  weather.description   =  "command line gem for checking google weather for next 7 days"
  weather.authors       =  ["James Rogers"]
  weather.email         =  "jd2rogers2@gmail.com"
  weather.files         =  ["lib/weather-cli-gem-jd.rb"]
  weather.executables   =  ["bin/runner", 
                            "config/environment.rb"]
  weather.homepage      =  ""
  weather.license       =  ""
end
