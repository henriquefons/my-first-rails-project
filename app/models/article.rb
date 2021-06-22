class Article < ApplicationRecord
  include Visible
  belongs_to :user, dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments, :allow_destroy => true

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 } 

end
