class Timestamp < ApplicationRecord
  belongs_to :episode

  def display_time
    Time.at(self.start).utc.strftime("%H:%M:%S")
  end
end
