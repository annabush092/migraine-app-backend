class Trigger < ApplicationRecord

  belongs_to :users
  has_many :logs

end
