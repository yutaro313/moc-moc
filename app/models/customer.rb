class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy

  validates :name, presence: true
  validates :learning, length: { maximum: 50 }
  validates :hobby, length: { maximum: 50 }
  validates :a_word, length: { maximum: 50 }

  attachment :image

end
