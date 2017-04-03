class User < Patron
  devise :invitable, :registerable, :confirmable

  has_shortened_urls
end
