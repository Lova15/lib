def ask_etages
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'Ã©tages veux-tu ?"
    etages=Integer(gets.chomp)
    return etages
end
def full_pyramid(nombre_etages)
    for i in 0..(nombre_etages-1)
        for j in 0..((nombre_etages*2)-2)
            if (nombre_etages-1-i)<=j && j<=(nombre_etages-1+i) 
                print "#"
            else
                print " "
            end
        end
        puts ""
    end
end
full_pyramid(ask_etages)

def wtf_pyramid(n)
    for i in 0..(n-1)
        for j in 0..((n*2)-2)
            b=(n-1)/2
            if b-i <=j && j<=i+b &&  i<=b
                print "#"
            elsif i-b<=j && j<=3*b-i && i>b
                print "#"
            else
                print " "
            end
        end
        puts ""
    end
end

def ask_etages_impair
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'Ã©tages veux-tu ? (choisis un nombre impair)"
    etages=Integer(gets.chomp)
    while etages%2==0
        puts "Veuillez entrer nombre impair"
        etages=Integer(gets.chomp)
    end
    return etages
end

wtf_pyramid(ask_etages_impair)
