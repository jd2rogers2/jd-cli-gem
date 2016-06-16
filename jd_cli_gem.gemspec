#% cat jd_cli_gem.gemspec

Gem::Specification.new do |weather|
  weather.name          =  "jd_cli_gem"
  weather.version       =  "0.0.0"
  weather.date          =  "2016-06-16"
  weather.summary       =  "find out weather for your zip"
  weather.description   =  "command line gem for checking weather.gov weather for your zip"
  weather.authors       =  ["James Rogers"]
  weather.email         =  "jd2rogers2@gmail.com"
  weather.files         =  ["lib/jd_cli_gem.rb",
                            "lib/scraper.rb", 
                            "lib/weather.rb"]
  weather.executables   =  ["runner", 
                            "console", 
                            "setup"]
  weather.homepage      =  "https://github.com/jd2rogers2/jd-cli-gem"
  weather.license       =  "MIT"
end
