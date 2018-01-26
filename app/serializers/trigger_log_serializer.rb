class TriggerLogSerializer < ActiveModel::Serializer
  attributes :id, :duration, :start, :trigger_id
end
