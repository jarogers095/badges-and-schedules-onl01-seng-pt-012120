def badge_maker(attendee)
  return "Hello, my name is #{attendee}."
end

def batch_badge_creator(array_of_names)
  return array_of_names.collect {
    |name| badge_maker(name)
  }
end

def assign_rooms(array_of_speakers)
  array_of_room_messages = []
  array_of_speakers.each_with_index do |speaker,index| array_of_room_messages.push("Hello, #{speaker}! You'll be assigned to room #{index+1}")
  end
  return array_of_room_messages
end

def printer(names)
  batch_badge_creator(names).each do |badge|
    puts badge
  end
  
  assign_rooms(names).each do |message|
    puts message
  end
end