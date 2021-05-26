class Pet 
    attr_reader :name, :day_start, :day_end, :email, :phone
    def initialize
        @name = name
        @day_start = day_start
        @day_end = day_end
        @email = email
        @phone = phone
    end

    def run
        puts "What is your dog's name?"
        @name = gets.chomp
        print "> "
        puts name.colorize(:color => :red)
        
    end

    def board_date
        puts "please enter the start day here(yyyy-mm-dd):"
        
        @day_start = gets.chomp
        @day_start = Date.parse(@day_start)
        puts @day_start.to_s.colorize(:color => :red)
        puts "please enter the end day here(yyyy-mm-dd):"
        @day_end = gets.chomp
        @day_end = Date.parse(day_end)
        puts @day_end.to_s.colorize(:color => :red)
        puts "#{@day_start}  to  #{@day_end},Is that right?"
        puts "1:Yes".colorize(:color => :blue)
        puts "2:No".colorize(:color => :blue)
        res = gets.chomp.strip
        if res.to_i != 1
            board_date
        else
            puts "Boarding period confirmed ! #{@day_start}  to  #{@day_end}"
        end
    end

    def leave_phone
        puts "please enter the phone"
        @phone = gets.chomp.to_s.split(" ")
        if @phone.to_s == ""
            leave_phone
        end
        return @phone
    end

    def leave_email
        puts "please enter the email"
        @email = gets.chomp.split(" ")
        if @email.to_s == ""
            leave_email
        end
        return @email
    end
    
    def confirmation
        puts "this is your information:"
        puts " name:#{@name}, date:#{@day_start} to #{@day_end},   phone:#{@phone},   email:#{@email}".colorize(:color => :red)
        puts
        puts "Congratulations! You have booked your dog boarding successfully. Looking foorward to see you soon!"
    end
end