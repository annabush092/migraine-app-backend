# Create users
# User.create(username: "annabush092", first_name: "Anna")

# Create triggers
# Trigger.create(name: "sleep", timed: true, user_id: User.first.id)

# Create trigger_logs
# TriggerLog.create(trigger_id: Trigger.first.id, start: Time.new(2018, 1, 20, 11))
# TriggerLog.first.update(duration: (Time.now - TriggerLog.first.start))

# Create migraines
# Migraine.create(user_id: User.first.id, start: Time.now, severity: 8)
