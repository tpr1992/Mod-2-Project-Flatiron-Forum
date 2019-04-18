class Post < ApplicationRecord
  belongs_to :user
  belongs_to :section, touch: true
  has_many :replies, :dependent => :destroy
end
