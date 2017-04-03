class Company < ApplicationRecord
  has_many :engineer
  belongs_to :user


end
