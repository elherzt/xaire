class Event < ActiveRecord::Base
  has_one :user
  scope :after, -> { where "start_date > ?", Time.now  }
  scope :done,  -> { where "end_date < ?", Time.now }
  scope :next,  -> { where "start_date >= ? AND start_date <= ?", from, to }
  
  validates :name, :description, :start_date, :place, :cost, :hour, presence: true

  def self.from
   Time.now
  end

  def self.to
    Time.now + 30.days
  end

end

