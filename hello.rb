def ask_first_name
    puts "what's your name please?"
    name = gets.chomp
    return name
end
def say_hello(first_name)
    puts "Bonjour, #{first_name}!"
end
if __FILE__==$0
    b=ask_first_name
    say_hello(b)
end