class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name
  has_many :triggers
  has_many :migraines
end
