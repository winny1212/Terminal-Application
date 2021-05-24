require_relative 'boarding_style.rb'
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