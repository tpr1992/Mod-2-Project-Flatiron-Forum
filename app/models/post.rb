class Post < ApplicationRecord
  belongs_to :user
  belongs_to :section
  has_many :replies
end
