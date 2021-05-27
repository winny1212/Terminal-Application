#The is a dog boarding booking system
#Before booking greeting users and ask the dog's name
#Then ask users to choose from the menu
#Choose a booking method
#Leave the booking details

#import the relative files
require_relative "booking_detail"
require_relative "board_style"
require_relative "command_line_args"


#Require gems
require 'colorize'
require 'tty-prompt'
require 'date'
require 'espeak'

#greeting and get dog's name
greeting
new_pet = Pet.new
new_pet.run
wait_clear(1)

#menu for selection whether to book a position
menu
menu_input = gets.chomp.to_i
wait_clear(2)

#Boarding method for select
case menu_input
when 1
    features = ["1: Open Air Staying. Price:$23/day","2: Deluxe Indoor Stay. Price:$30/day", "3: Go back to memu"]
    selection = TTY::Prompt.new.select("Choose a room type:", features, cycle: true, marker: '>', echo: false)
    if selection == "1: Open Air Staying. Price:$23/day"
        puts
        puts "Outdoor Features"
        features_outdoor = ["  *Open Air kennels","  *Two meals per day","  *Play time with doggy friends","  *Jackets may be required depending on weather conditions, can be hired at time of check-in","  *Outdoor toys"]
      #   output the outdoor features
        output(features_outdoor)
        wait_clear(2)
      # leave the booking details
        new_pet.board_date
        wait_clear(1)
        new_pet.leave_phone
        new_pet.leave_email
        wait_clear(1)
        new_pet.confirmation
    elsif selection == "2: Deluxe Indoor Stay. Price:$30/day"
        puts
        puts "Indoor Features"
      #   output the indoor features  
        feature_indoor = ["  *State of the art luxury boarding experience","  *Heated and airconditioned kennel","  *Two meals per day", "  *Doggy play sessions (depending on energy and temperament","  *Access to our veterinary service"]
        output(features_iutdoor)
        wait_clear(1)
      # leave the booking details
        new_pet.board_date
        wait_clear(1)
        new_pet.leave_phone
        new_pet.leave_email
        wait_clear(1)
        new_pet.confirmation
    else
        menu
   end
# don't want to book,want to see more information
when 2
    puts "Take a break and enjoy your holiday while we take care of your pet at Animal Aid’s Boarding Kennels and Cattery in Coldstream. We are a dedicated and professional team of compassionate animal lovers. We pride ourselves on providing a safe, happy and relaxed environment for your best mate to call their home away from home!There two different boarding style here:  open air staying and deluxe indoor staying depend your preference.When your pet stays at Animal Aid you can be sure it will receive the highest level of care. Our Boarding team works directly with our Vet Clinic and Grooming Salon – together our dedicated teamsare available to assist with all of your pet’s needs. Premium quality dry foods as well as a variety of high quality canned foods are on the menu and large exercise yards provide a secure space for those who like a bit of a run."
    puts " "
    sleep(3)
    exit_program
 #exit the system  
when 3
    wait_clear(1)
    puts "Thank you for your visiting and hope have you soon! Have a nice day!"
end
   
