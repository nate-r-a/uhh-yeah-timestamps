class Timestamp < ApplicationRecord
  attr_accessor :hours, :minutes, :seconds

  belongs_to :episode
  belongs_to :segment, optional: true

  acts_as_votable

  def display_time
    Time.at(self.start).utc.strftime("%H:%M:%S")
  end

  def uid
    "ts" + self.id.to_s
  end
end
