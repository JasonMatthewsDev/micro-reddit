class Comment < ActiveRecord::Base
  validates :content, presence: true, length: { minimum: 2, maximum: 1024 }
  validates :user_id, presence: true
  validates :post_id, presence: true
  
  belongs_to :user
  belongs_to :post
end
