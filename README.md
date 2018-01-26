# migraine-app-backend

Back-end (Ruby on Rails):
Database that keeps track of:
1. users - username, first_name, password,
has_many :triggers, has_many :migraines, has_many :trigger_logs, through: :triggers
2. triggers - name, timed (T/F),
belongs_to :user, has_many :trigger_logs
  - Each user will come up with and enter their trigger types themselves. So each Trigger instance belongs to only one user.
3. migraines - start_time, severity (number from 1 - 10, 10 being the worst),
belongs_to :user
  - duration is not in the db but is easily calculated in the front-end, or maybe even in the backend before sending to the frontend
4. trigger_logs - duration, start (can't use created_at because they might indicate they had a trigger after the fact)
belongs_to :trigger
  - When a user records that they've participated in a trigger, an entry is created that logs the start and duration (if the trigger is one-time, duration=0)
  - duration can be calculated by when a user signifies a time the event has ended, and then subtracting end_time - start => difference in seconds, which then needs to be converted into a more normal time such as days, hours, minutes, and seconds. In duration attr, store the time difference in seconds, and then convert as needed (maybe make a method to put it into a nice string for display in the frontend)
  - //syntax: Time.new(year, month, day, hour, minute, seconds)
  - When doing the math, make sure to have the end_time be Time, not a DateTime. The timezone conversion will be done for you (!) so just simply subtract and boom.

API schema:
user: {
  id: ,
  username: ,
  first_name: ,
  <!-- triggers: [id: ],
  trigger_logs: [id: ],
  migraines: [id: ] -->
}
migraine: {
  id: ,
  severity: ,
  start: ,
  user: {id: }
}
trigger: {
  id: ,
  name: ,
  timed: ,
  user: {id: }
}
trigger_logs: {
  id: ,
  duration: ,
  start: ,
  trigger: {id: },
  user: {id: }
}


  Possible names:
  - Aggrivatrs
  - FoodFeels
  - PainTrackr
  - TriggerWarning
  - WhatHappened
  - ShouldI
  - CanIHave
  - NameThatPain
  - How did this happen

  App to allow people with migraines/allgergies to track possible triggers quickly and easily to find what the problem is. The important part is ease of use - they can quickly open the app and without doing anything else just tap on a button of the trigger they're having (like wine or lactose or whatever) out of a list of triggers they've specified, and it will be logged. Same for when they actually get sick - quick open the app, press one button, and done.

  When they have more time, they can go futher into the app to see trends.

  Add a feature so that if they want they can ask the app how many times a certain trigger may have contributed to a migraine - to help users decide in the moment if they should have something or not.

  Another feature - add some sort of sleep tracker feature, and maybe also an exercise tracker feature (especially exercises that may make the neck muscles tight or the other way, may relax the neck muscles), also a screen-time tracker for how long you're staring at a screen/day, and a daylight tracker for how long you're squinting in the sunlight...
  At this point these are very individual triggers, so maybe you let the user put these in as their own triggers -
  Perhaps just have different types of triggers, one-time-only and time-duration. So then they can track if they have a trigger like drinking a glass of wine (one-time-only), but also they can track things like how many hours of sleep they get each night (time-duration).
  User interface for this would be a different set-up - when they create a new trigger, they specify if it's a one-time-only or a time-duration. Then when they partake in a trigger, they can log it the same way, by simply pressing the button on the homepage; however, if it's a time-duration, they also log when they've completed that trigger, so they can log the end-time as well as the start-time. Yes I like this way.

  When the user indicates they are currently experience a migraine, provide a pop-up of some sort to tell them to go to bed.
