# puts "Enter your first name: "
# first_name = gets.chomp

# puts "Enter your last name: "
# last_name = gets.chomp

# full_name = first_name + " " + last_name

# puts "Your full name is: " + full_name

def full_name(first_name, last_name)
  first_name + " " + last_name
end

puts full_name("Kostas", "Sofianopoulos")
