class Timestamp < ApplicationRecord
  belongs_to :episode
  belongs_to :segment, optional: true

  def display_time
    Time.at(self.start).utc.strftime("%H:%M:%S")
  end

  def uid
    "ts" + self.id.to_s
  end
end
