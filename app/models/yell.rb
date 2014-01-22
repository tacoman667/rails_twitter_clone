class Yell < ActiveRecord::Base

  validates :user_name, :content, presence: true

end
