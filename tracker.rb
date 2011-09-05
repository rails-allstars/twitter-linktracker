require 'rubygems'
require 'tweetstream'
require 'activerecord'
require 'yaml'

@settings = YAML.load("settings.yml")

TweetStream::Daemon.new(@settings[:username], @settings[:password], @settings[:id]).filter(:track => "ras_kiel") do |status|
  puts "test"
  puts status.to_json
end