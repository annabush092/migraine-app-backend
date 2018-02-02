#  This is not being used.
# Ideally, the trigger_serializer, when displaying its nested has_many TriggerLogs, would use this serializer. However, because the trigger_serializer is already nested inside user_serializer, it goes back to the default to display its internal associations instead of using this serializer.
# Something to play with in the future...

class TriggerLogSerializer < ActiveModel::Serializer
  attributes :id, :duration, :start
end
