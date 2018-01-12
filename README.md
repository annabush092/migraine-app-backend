# migraine-app-backend

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


Back-end (Ruby on Rails):
Database that keeps track of:
1. users - username, first_name, password, has_many :triggers, has_many :migraines
2. triggers - belong_to :users
  - should each user have their individual triggers (simple has_many belongs_to), or should triggers be their own model, so many different users can have the same trigger (many_to_many)?
  - Each user will come up with and enter their triggers themselves. So that would point to has_many belongs_to.
  - What if we want to recommend possible triggers that are common among other users? That would point to many_to_many.
3. migraines - start_time, end_time, severity (number from 1 - 10, 10 being the worst), belong_to :users
  - duration is not in the db but is easily calculated in the front-end, or maybe even in the backend before sending to the frontend
