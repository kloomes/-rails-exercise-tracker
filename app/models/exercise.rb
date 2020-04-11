class Exercise < ApplicationRecord
  has_many :setsets

  belongs_to :session
end
