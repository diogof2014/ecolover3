import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

        Page {
            id: page0
            title: i18n.tr("Noticias EcoLover")
            visible: false
            Rectangle {  width: 40; height: 17; color: "transparent"; radius: 20.0
               id: rec1
               x: 139
               y: 47
               border.color: "transparent"
               // width, height
               Text {
                   id: noticias
                   x: -101
                   y: -39
                   text: "Bem Vindo Caro utilizador\n Nas noticias do EcoLover de hoje temos um Anuncio\nMUITO IMPORTANTE A FAZER.\n É que no em que estiverem a ver isto\n os Fundadores da EcoLover\n Diogo Figueira e Pedro Batista\n Apresentarão ao mundo a EcoLover\n Terminando assim o seu curso de\n  Informática de Gestão "
                   wrapMode: Text.NoWrap
                   verticalAlignment: Text.AlignTop
                   horizontalAlignment: Text.AlignHCenter
                   font.pointSize: 12
               }

           }
        }



