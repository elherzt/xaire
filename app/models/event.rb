class Event < ActiveRecord::Base
  has_one :user
  scope :next, -> {  }
  scope :done, -> { where ("end_date < ?", Time.now }
end
