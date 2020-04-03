#!/bin/sh

#dialog --stdout --msgbox
#dialog --msgbox "Você aceita continuar a configuração da maquina" 5 50
#dialog --title
where true;
do 
    distros=$(dialog --stdout --title "Escolha sua Distro" --menu "Qual sua distro preferida?" 0 0 0 \
                    1 "Debian"       \
                    2 "RedHat"       \
                    3 "Gentoo"       \
                    4 "Slackware"    \
                    5 "Ubuntu"       \
                    0 "Sair"    )

    [$? -ne 0] && echo "Cancelou ou Apertou ESC." && break

        case "$distros" in
        1) dialog --stdout --msgbox "Essa é a melhor distro!" 5 30; break ;;
        2) dialog --title "RedHat" --infobox '\nEla agora é ENTERPRISE' 5 30; break ;;
        3) dialog --title "Gentoo"  --msgbox '\nVocê é Psicopata' 5 25 ; break ;;
        4) dialog --title "Slackware" --yesno '\nVocê é Ateu ?' 5 30 ;

            if [$? = 0]; then
                dialog --title "Slackware Ateu" --infobox '\nSabia!' 0 0;
        else
                dialog --title "Slacware Não é ateu?" --inforbox '\nAmarelou.' 0 0;
            fi
        break;

        5) dialog --title 'Ubuntu' --timebox '\nVou gravar a hora que você escolheu esse absurdo.' 0 0 ;;
        0) echo 'Você escolheu sair' ; break ;;

        esac 

done