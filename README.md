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

Another feature - add some sort of sleep tracker feature, and maybe also an exercise tracker feature (especially exercises that may make the neck muscles tight or the other way, may relax the neck muscles)

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
