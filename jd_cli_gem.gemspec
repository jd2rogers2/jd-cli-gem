% cat jd_cli_gem.gemspec

Gem::Specifications.new do |weather|
  weather.name          =  "jd_cli_gem"
  weather.version       =  "0.0.0"
  weather.date          =  "16 June 2016"
  weather.summary       =  "find out weather for your zip"
  weather.description   =  "command line gem for checking weather.gov weather for your zip"
  weather.authors       =  ["James Rogers"]
  weather.email         =  "jd2rogers2@gmail.com"
  weather.files         =  ["lib/jd_cli_gem.rb",
                            "lib/scraper.rb", 
                            "lib/weather.rb"]
  weather.executables   =  ["bin/runner", 
                            "bin/console", 
                            "bin/setup"]
  weather.homepage      =  "https://github.com/jd2rogers2/jd-cli-gem"
  weather.license       =  "MIT"
end
