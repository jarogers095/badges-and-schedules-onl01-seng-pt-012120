def badge_maker(attendee)
  return "Hello, my name is #{attendee}."
end

def batch_badge_creator(array_of_names)
  return array_of_names.collect {
    |name| badge_maker(name)
  }
end

def assign_rooms(array_of_speakers)
  