def ask_first_name
    puts "what's your name please?"
    return gets.chomp
end
def say_hello(first_name)
    puts "Bonjour, #{first_name}!"
end
if __FILE__==$0
    say_hello(ask_first_name)
end