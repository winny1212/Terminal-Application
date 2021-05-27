if ARGV.length > 0
	info, *rest = ARGV
	ARGV.clear
    case info
    when '-help'
        puts "See more information in readme"
        exit
    when '-version'
        puts "This program is using Ruby version: #{RUBY_VERSION}"
    else
        puts "Invalid ARGV"
    end
end
