require 'asciiart'
require 'colorize'
require 'tty-prompt'
require 'date'
require 'espeak'


require_relative './boarding.rb'
# Greeting message
puts "Hi,welcom to my Deluxy Dog Boarding Home"
# speech = ESpeak::Speech.new("welcome to this system!")
# get dogs name
def run
    @name = dog_name("What is your dog's name?")
    BookingDetail.new.booking
end
def dog_name(data)
    puts data
    @name = gets.chomp.strip
    if @name.to_s.empty?
        dog_name("What is your dog's name?")
    end
    print ">"
    return @name.colorize(:color => :red)
end

# Ask if customer want a booking or not
def booking
  puts "Do you want book a dog boarding position?"
  puts "1: Yes. I want to book a position."
  puts "2: No. Just want to view some information."
  puts "3: Exit"
  puts
  print">"
end
dog_name
booking

# Booking style choose
# choose_input = BoardingStyle.new(choosing)

case gets.to_i
when 1
   puts "Choose a boarding style:"
   # style_choose(Open Air Staying,23)
   puts "1: Open Air Staying."
   puts "    Price:$23/day"
   puts "2: Deluxe Indoor Stay."
   puts "    Price:$30/day"
   puts "3: Go back to the main page"
    board_method = gets.chomp

       if board_method== 1
         puts "Open Air Staying"
         puts "Open Air kennels:"
         sleep(0.5)
         puts "Two meals per day"
         sleep(0.5)
         puts "Play time with doggy friends"
         sleep(0.5)
         puts "Jackets may be required depending on weather conditions, can be hired at time of check-in"
         sleep(0.5)
      elsif board_method == 2
         puts "Deluxe Indoor Stay"
         puts "State of the art luxury boarding experience"
         sleep(0.5)
         puts "Heated and airconditioned kennel"
         sleep(0.5)
         puts "Two meals per day"
         sleep(0.5)
         puts "Doggy play sessions (depending on energy and temperament"
         sleep(0.5)
         puts "Access to our veterinary service"
         sleep(0.5)
    else 
       puts "Put any keys to go back to the main menu"
    end
puts
puts "please enter the start day here:"
puts
day_start = gets.chomp
puts "please enter the end day here:"
puts
day_end = gets.chomp

puts "Congratulations! You have booked your dog boarding successfully. Looking foorward to see you soon!"

   # No booking, want to choose more information
when 2
puts "Take a break and enjoy your holiday while we take care of your pet at Animal Aid’s Boarding Kennels 
and Cattery in Coldstream. We are a dedicated and professional team of compassionate animal lovers. 
We pride ourselves on providing a safe, happy and relaxed environment for your best mate to call their home away 
from home!
There two different boarding style here:  open air staying and deluxe indoor staying depend your preference.
When your pet stays at Animal Aid you can be sure it will receive the highest level of care. 
Our Boarding team works directly with our Vet Clinic and Grooming Salon – together our dedicated teams
 are available to assist with all of your pet’s needs. Premium quality dry foods as well as a variety of 
 high quality canned foods are on the menu and large exercise yards provide a secure space for those who 
 like a bit of a run."
# Exit
when 3
   sleep(2)
   system('clear')
   puts "Thank you for your visiting and hope have you soon! Have a nice day!"
end