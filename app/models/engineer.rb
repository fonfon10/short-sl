class Engineer < ApplicationRecord

  has_many :ShortenedUrl
  belongs_to :company

  belongs_to :user

end
