class Episode < ApplicationRecord
  has_many :timestamps, dependent: :destroy

  def url
    "https://traffic.libsyn.com/uhhyeahdude/#{self.filename}.mp3"
  end

  def short_title
    "Ep " + self.number.to_s
  end

  def title
    "Episode " + self.number.to_s
  end

  def uid
    "ep" + self.number.to_s
  end
end
