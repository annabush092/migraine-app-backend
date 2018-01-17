class User < ApplicationRecord

  has_many :triggers
  has_many :migraines
  has_many :trigger_logs, through :triggers

end
