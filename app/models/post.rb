class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 10, maximum: 255 }
  validates :url, presence: true, length: { minimum: 10, maximum: 255 }
  validates :user_id, presence: true
  
  belongs_to :user
  has_many   :comments
end
