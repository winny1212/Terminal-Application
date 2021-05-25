def greeting
    speech = ESpeak::Speech.new("welcome to this system!")
    speech.speak
    puts "Hi,welcome to the luxury boarding home"
end