require 'pry'

def badge_maker(name)
 "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each {|names| badges << badge_maker(names)}
  badges
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index { |attendees, room| room_assignments << "Hello, #{attendees}! You'll be assigned to room #{room+1}!" }
  room_assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each { |badge| puts badge }
  assign_rooms(attendees).each { |rooms| puts rooms}
end
