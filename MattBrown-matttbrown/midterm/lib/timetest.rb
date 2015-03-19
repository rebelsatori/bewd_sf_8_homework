require 'time_diff'

birthday2 = Time.at(557366400)

now = Time.now

puts time_diff_components = Time.diff(birthday2, now)
