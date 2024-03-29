class Reminder < ApplicationRecord
  validates :url, presence: true
end
