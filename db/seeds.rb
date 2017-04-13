# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def get_college
  college_array = [
    "ITSD",
    "COS",
    "CTS",
    "CAH",
    "GSBE",
    "EAST",
    "SOC",
    "EDU",
    "HPHP"
  ]
  return college_array.sample
end

def create_computer_name(incrementer)
  type_array = [
    "PC",
    "MAC",
    "Lab"
  ]
  name = "my" + type_array.sample + incrementer.to_s
  return name
end

def select_os
  os_array = [
    "Windows 7 Enterprise",
    "MacOS 10.12",
    "OS X 10.11",
    "Windows 10 Enterprise"
  ]
  return os_array.sample
end

def randomize
  if rand(2) == 1
    return true
  else
    return false
  end
end

i = 1
until i > 100 do
  Computer.create(name: create_computer_name(i),
  os: select_os,
  idf: randomize,
  lab: randomize,
  scep: randomize,
  college: get_college
  )
  i = i + 1
end
