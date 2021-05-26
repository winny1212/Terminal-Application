require "colorize"


def greeting
    speech = ESpeak::Speech.new("welcome to this system!")
    speech.speak
    puts "Hi,welcome to the Luxury Boarding Home!"
end

def menu
    puts "Do you want book a dog boarding position?"
    puts "1: Yes. I want to book a position.".colorize(:blue)
    puts "2: No. Just want to view some information.".colorize(:blue)
    puts "3: Exit".colorize(:blue)
    puts
    print">"
end

def exit_program
    puts "Are you sure to quit? (Y/N)"
    quit_choice = gets.chomp.upcase
    if quit_choice == "Y"
        puts "Thank you for using!"
        exit
    else
        menu
    end
end

def wait_clear(time)
    sleep(time)
    system "clear"
end



def output(collection)
    collection.each do |data|
        sleep(0.5)
        puts data.colorize(:blue)
    end
end


