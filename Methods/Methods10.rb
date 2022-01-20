# 10. The variables below are both assigned to arrays. The first one, names,
# contains a list of names. The second one, activities, contains a list of
# activities. Write the methods 'name' and 'activity' so that they each take the
# appropriate array and return a random value from it. Then write the method
# sentence that combines both values into a sentence and returns it
# from the method.

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names) # here I thought that the name of parameter didn't matter, that it can be x and get 'names' put into it when we puts, but it does have to be 'names' here
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))
# this is logically sound just hard to remember