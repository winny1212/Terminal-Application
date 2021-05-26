require_relative "booking_detail"
require_relative "board_style"

require 'colorize'
require 'tty-prompt'
require 'date'
require 'espeak'

greeting
new_pet = Pet.new
new_pet.run
wait_clear(1)
menu
menu_input = gets.chomp.to_i
wait_clear(2)
case menu_input
when 1
    features = ["1: Open Air Staying. Price:$23/day","2: Deluxe Indoor Stay. Price:$30/day", "3: Go back to memu"]
    selection = TTY::Prompt.new.select("Choose a room type:", features, cycle: true, marker: '>', echo: false)
    if selection == "1: Open Air Staying. Price:$23/day"
        puts "Outdoor Features"
        puts
        features_outdoor = ["  *Open Air kennels","  *Two meals per day","  *Play time with doggy friends","  *Jackets may be required depending on weather conditions, can be hired at time of check-in","  *Outdoor toys"]
        
        features_outdoor.each do |data|
                sleep(0.5)
                puts data
        end
        new_pet.board_date
        new_pet.leave_phone
        new_pet.leave_email
        new_pet.confirmation
    elsif selection == "2: Deluxe Indoor Stay. Price:$30/day"
        puts "Indoor Features"
        puts
        feature_indoor = ["  *State of the art luxury boarding experience","  *Heated and airconditioned kennel","  *Two meals per day", "  *Doggy play sessions (depending on energy and temperament","  *Access to our veterinary service"]
        feature_indoor.each do |data|
            sleep(0.5)
            puts data
        end
        new_pet.board_date
        new_pet.leave_phone
        new_pet.leave_email
        new_pet.confirmation
    else
        menu
    end
when 2
    puts "Take a break and enjoy your holiday while we take care of your pet at Animal Aid’s Boarding Kennels and Cattery in Coldstream. We are a dedicated and professional team of compassionate animal lovers. We pride ourselves on providing a safe, happy and relaxed environment for your best mate to call their home away from home!There two different boarding style here:  open air staying and deluxe indoor staying depend your preference.When your pet stays at Animal Aid you can be sure it will receive the highest level of care. Our Boarding team works directly with our Vet Clinic and Grooming Salon – together our dedicated teamsare available to assist with all of your pet’s needs. Premium quality dry foods as well as a variety of high quality canned foods are on the menu and large exercise yards provide a secure space for those who like a bit of a run."
    puts " "
    sleep(3)
    exit_program
when 3
    wait_clear(1)
    puts "Thank you for your visiting and hope have you soon! Have a nice day!"
end
   
