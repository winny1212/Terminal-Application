require_relative 'boarding_style.rb'

def booking
    puts "Do you want book a dog boarding(寄养) position?"
    puts "1: Yes. I want to book a position.".colorize(:color => :blue)
    puts "2: No. Just want to view some information.".colorize(:color => :blue)
    puts "3: Exit".colorize(:color => :blue)
    puts
    print">"
    case gets.to_i
    when 1
        menu = ["1: Open Air Staying（室外）. Price:$23/day","2: Deluxe Indoor Stay（室内）. Price:$30/day"]
       
       
        index = 0
        menu.each_with_index do |m,i|
            if selection == m
                index = i
            end
        end
        res = booking_choose(index)
class BookingDetail
	def booking_choose(board_method)
        features = BoardingStyle.new.data
        if board_method == 0
            puts "Open Air Staying"
            puts "Open Air kennels:"
            
            features["Open Air Stay"].each do |data|
                sleep(0.5)
                puts data
            end
        elsif board_method == 1
            puts "Deluxe Indoor Stay"
            puts "State of the art luxury boarding experience"
            features["Deluxe Indoor Stay"].each do |data|
                sleep(0.5)
                puts data
            end
        else
            puts "Put any keys to go back to the main menu"
            booking
        end
    end