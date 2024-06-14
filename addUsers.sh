# Script addUsers.sh
#!/bin/bash

# Fonction pour créer un utilisateur
création_utilisateur() {
local nom_utilisateur="$1"
  
# Vérifier si l'utilisateur existe déjà
if id "$nom_utilisateur"; 
then
    echo "L'utilisateur $nom_utilisateur existe déjà"
else
# Création de l'utilisateur et vérification de cette création
    if useradd "$nom_utilisateur"; 
    then
      echo "L'utilisateur $nom_utilisateur a été créé"
    else
      echo "Erreur à la création de l'utilisateur $nom_utilisateur"
    fi
fi
}

# Vérifier la présence d'arguments
if [ $# -eq 0 ]; 
then
  echo "Il manque les noms d'utilisateurs en argument - Fin du script"
  exit 1
fi

# Appel de la fonction pour chaque utilisateur
for nom_utilisateur in "$@"; 
do
  création_utilisateur "$nom_utilisateur"
done

# Commandes 

