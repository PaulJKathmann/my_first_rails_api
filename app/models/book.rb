class Book < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3}

  belongs_to :author
  has_many :chapters, dependent: :destroy
end
