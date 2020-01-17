#fonction qui recupere le mot de passe taper par l'utilisateur
def sign_up
    puts "Taper votre prenom: "
    prenom=gets.chomp
    puts "#{prenom}! Taper votre nouveau mot de passe : "
    return gets.chomp
end
#methodes qui affiche le message secret et message de bienvenue
def welcome_screen
    puts "Bienvenue! je sais votre secret."
end


def sign_in(mdp_existant)
    puts "retaper votre mot de passe: "
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