# Create users
# first_u = User.create(username: "annabush092", first_name: "Anna")

# Create triggers
first_t = Trigger.create(name: "sleep", timed: true, user_id: User.first.id)
