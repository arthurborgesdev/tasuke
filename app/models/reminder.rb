class Reminder < ApplicationRecord
  validates :url, presence: true
  validates :page_number, presence: true, numericality: { only_integer: true }
end
