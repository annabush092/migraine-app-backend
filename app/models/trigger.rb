class Trigger < ApplicationRecord

  belongs_to :user
  has_many :trigger_logs

end
