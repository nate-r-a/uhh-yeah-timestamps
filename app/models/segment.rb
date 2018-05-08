class Segment < ApplicationRecord
  has_many :timestamps

  scope :ordered, ->  { order(title: :asc) }
end
