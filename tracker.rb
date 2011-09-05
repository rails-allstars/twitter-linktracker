require 'rubygems'
require 'tweetstream'
require 'active_record'
require 'active_support/all'
require 'yaml'

@settings = YAML.load(File.read("settings.yml")).symbolize_keys

TweetStream::Daemon.new(@settings[:username], @settings[:password], @settings[:id]).filter(:track => "ras_kiel") do |status|
  puts "test"
  puts status.to_json
end