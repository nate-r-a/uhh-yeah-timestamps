# json = ActiveSupport::JSON.decode(File.read('episodes.json'))
require 'json'
require File.expand_path('../config/environment', __FILE__)

file = File.read('episodes.json')
episode_hash = JSON.parse(file)

episode_hash.each do |ep|
  puts ep
  puts ""
  Episode.create!(ep) # , without_protection: true)
end