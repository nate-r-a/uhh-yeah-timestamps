json = ActiveSupport::JSON.decode(File.read('episodes.json'))

json.each do |a|
  Episode.create!(a['country'], without_protection: true)
end