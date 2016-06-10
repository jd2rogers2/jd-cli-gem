require "bundler"
Bundler.require(:default, :development)

require "pry"
require "nokogiri"
require "open-uri"

require_relative "../lib/scraper.rb"
require_relative "../lib/cli.rb"
