import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

        Page {
            id: page0
            title: i18n.tr("Creditos")
            visible: false
            Rectangle {  width: 40; height: 17; color: "transparent"; radius: 20.0
               id: rec1
               x: 139
               y: 47
               border.color: "transparent"
               // width, height
               Text {
                   id: noticias
                   x: -135
                   y: -48

                   text: "Desenvolvedor: Diogo Figueira\n Pessoas que estiveram Indiretamente ligados ao desenvolviment\n do qual gostaria de agradecer em especial\n Riccardo Padovani por me ter ajudado tanto desde o momento mais dificel\n do desenvolvimento.E também por ser uma pessoa fantástica\n  Sylvain do AskUbuntu que me ajudou desde os primeiros passos que dei \n e por ser coomo o Riccardo que esteve sempre disponivel para me ajudar\n Agredecimentos Fora Contexto App \n Primeiro a todos os profs e que me aturaram desde o primeiro ano \n e sempre acreditaram em mim \n Ao Dr. Bruno Vicente Diretor da CDM por também me ter aturado \n Ao Nuno Folhada, e a equipa da BICA STUDIOS \n ele e a EUQUIPA deram me muita motivação,para continuar a lutar\n e tornar-me uma pessoa cada vez melhor.\n Por ultimo, gostaria de agrdecer a uma pessoa que já faz parte da minha\n vida à muito tempo Bem nestes ultimos tempos não mas continua lá, penso nele todos os dias, sem falta, \n pelo o amor, carinho, amizade, vontade de viver e por ter passado alguns\n dos meus melhores momentos de vida com a familia dele, que me tratam\n como um irmo ãmais pequeno.\n A pessoa que me refiro chama-se Miguel Almeida Santos.\n Obrigado Miguel, Obrigado a Todos que referi.\n Esta PAP também vos pertence, dirtamente ou indiretament.\n Obrigado"
                   wrapMode: Text.NoWrap
                   verticalAlignment: Text.AlignTop
                   horizontalAlignment: Text.AlignHCenter
                   font.pointSize: 10
               }

           }
        }



