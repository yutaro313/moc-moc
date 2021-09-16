class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy

  # validates :name, optional: true
  # validates :learning, length: { maximum: 50 }, optional: true
  # validates :hobby, length: { maximum: 50 }, optional: true
  # validates :a_word, length: { maximum: 50 }, optional: true

  attachment :image

end
