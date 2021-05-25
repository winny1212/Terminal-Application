
require_relative 'boarding_style.rb'


class BookingDetail
    def booking
        puts "Do you want book a dog boarding position?"
        puts "1: Yes. I want to book a position.".colorize(:color => :blue)
        puts "2: No. Just want to view some information.".colorize(:color => :blue)
        puts "3: Exit".colorize(:color => :blue)
        puts
        print">"
        case gets.to_i
        when 1
            menu = ["1: Open Air Staying. Price:$23/day","2: Deluxe Indoor Stay. Price:$30/day"]
            selection = TTY::Prompt.new.select("Choose a room type:", menu, cycle: true, marker: '>', echo: false)
            puts selection.colorize(:color => :red)
           
            index = 0
            menu.each_with_index do |m,i|
                if selection == m
                    index = i
                end
            end
    end
            res = booking_choose(index)
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

    def board_date
        puts "please enter the start day here(yyyy-mm-dd):"
        
        day_start = gets.chomp
        day_start = Date.parse(day_start)
        puts day_start.to_s.colorize(:color => :red)
        puts "please enter the end day here(yyyy-mm-dd):"
        day_end = gets.chomp
        day_end = Date.parse(day_end)
        puts day_end.to_s.colorize(:color => :red)
        puts "#{day_start}  to  #{day_end},Is that right?"
        puts "1:Yes".colorize(:color => :blue)
        puts "2:No".colorize(:color => :blue)
        res = gets.chomp.strip
        if res.to_i != 1 and res.to_i != 2
            board_date
        end
        return "#{day_start}  to  #{day_end}"
    end
    def leave_phone
        puts "please enter the phone"
        phone = gets.chomp.to_s.split(" ").first
        if phone.to_s==""
            leave_phone
        end
        return phone
    end
    def leave_email
        puts "please enter the email"
        email = gets.chomp.split(" ").first
        if email.to_s==""
            leave_email
        end
        return email
    end
end