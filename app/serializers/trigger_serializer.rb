class TriggerSerializer < ActiveModel::Serializer
  attributes :id, :name, :timed, :trigger_logs
end
