def sign_up
    puts "Taper votre nouveau mot de passe:"
    mdp=gets.chomp
    return mdp
end

def welcome_screen
    puts "Bienvenue! vous seriez riche cette année."
end


def sign_in(mdp_existant)
    puts "Taper votre mot de passe:"
    mdp_courant=gets.chomp
    while mdp_courant!=mdp_existant
        puts "Mot de passe incorrect, veuillez resaisir:"
        mdp_courant=gets.chomp
    end
   welcome_screen
end
if __FILE__==$0
    sign_in(sign_up)
end