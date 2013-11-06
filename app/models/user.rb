class User < ActiveRecord::Base
  has_many :events
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def member_since
    created_at.strftime("%F")
  end

  def all_user_events
    events
  end
end
