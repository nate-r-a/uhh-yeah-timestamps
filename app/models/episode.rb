class Episode < ApplicationRecord
  has_many :timestamps

  def url
    "https://traffic.libsyn.com/uhhyeahdude/#{self.filename}.mp3"
  end

  def uid
    "ep" + self.number.to_s
  end
end
