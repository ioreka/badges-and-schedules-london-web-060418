#attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

#rooms = [1, 2, 3, 4, 5, 6, 7]

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  return attendees.collect{ |a| badge_maker(a)}
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index do |name, i|
    room_assignments << "Hello, #{name}! You'll be assigned to room #{i+1}!"
end
room_assignments
end

def printer(atendees)
  batch_badge_creator(attendees).each {|badge| puts badge}
  assign_rooms(attendees).each {|rooms| puts rooms}
end
