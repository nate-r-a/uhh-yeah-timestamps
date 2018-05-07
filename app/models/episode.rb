class Episode < ApplicationRecord
  has_many :timestamps

  def url
    "https://traffic.libsyn.com/uhhyeahdude/#{self.filename}.mp3"
  end

  def title
    "Episode " + self.number.to_s
  end

  def uid
    "ep" + self.number.to_s
  end
end
