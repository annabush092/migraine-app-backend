class TriggersSerializer < ActiveModel::Serializer
  attributes :id, :name, :timed
  belongs_to :user, only: [:id]
end
