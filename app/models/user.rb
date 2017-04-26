class User < Patron
  devise :invitable, :registerable, :confirmable

  has_shortened_urls

  has_many :engineers
  has_many :companies
end
