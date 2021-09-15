class Post < ApplicationRecord
  belongs_to :customer

  has_many :post_comments, dependent: :destroy

end
