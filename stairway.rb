def lancer_le_dés
    puts "taper sur une touche pour lancer le dés"
    touche=gets.chomp
    while touche==nil
        puts "taper l pour lancer le dés"
        touche=gets.chomp
    end
    return Random.new.rand(1..6)
end

def remplir_array(nombre_de_tours,array)
    array.push(nombre_de_tours)
    return array
end

def average_finish_time(array)
    longueur=array.length
    s=0
    array.each {|x| s=s+x}
    s=s/longueur
    puts " average time #{s}"
    return s
end   

def jeu_oie
    nombre_de_tours=0
    e=1
    puts "lancer le dés: "
    
    face=lancer_le_dés
    while e<10
        if face==5 || face==6
            e+=1
            puts "#{face}"
            puts "vous avez avancer d'une marche,vous êtes à l'etage #{e}"
            nombre_de_tours+=1
        elsif face==1
            puts "#{face}"
            if e>1
                e-=1
                puts "vous avez descender d'une marche, vous êtes à l'étage #{e}"
            else
                puts "vous ne pouvez plus descendre vous êtes à la 1 ere etage"
            end
            nombre_de_tours+=1
        elsif face==2 || face==3 || face==4
            puts "#{face}"
            puts "rien ne se passe vous rester sur #{e}"
            nombre_de_tours+=1
        else
            puts "#{face}"
            puts "commande incorect veuillez taper une touche"
        end
        face=lancer_le_dés if e<10   
    end
        puts ""
        puts "Vous avez gagner, partie terminer"
    return nombre_de_tours
end
if __FILE__==$0
    b=jeu_oie
    array=[]
    array=remplir_array(b,array)
    average_finish_time(array)
end