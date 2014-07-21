import QtQuick 2.0
import Ubuntu.Components 0.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import "components"

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    id: main
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "com.ubuntu.developer..EcoLover3"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    automaticOrientation: true

    width: units.gu(56)
       height: units.gu(60)
property var sumquant
       property var sumhor
       property var sumM
       property var sumV
       property var sumA
        property var sumw
       property var t
       property var x1
       property var y1
       property var k
       property var r


/* pagina inicial, e titulo*/
       PageStack {
           id: pageStack
           anchors.rightMargin: 0
           anchors.bottomMargin: 0
           anchors.leftMargin: 0
           anchors.topMargin: 0
           Component.onCompleted: push(page0)
       Page {
           id: page0
           title: i18n.tr("Bem Vindo à Aplicação do EcoLover")
           visible: false
           Column {
               anchors.margins: units.gu(3)
               spacing: units.gu(3)
               anchors.fill: parent
               /* imagem ecolover */
                          Image{
                              anchors.horizontalCenter: parent.horizontalCenter
                          source: "image002.png"
                          }
               Button {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: i18n.tr("O Seu Consumo de Energia")
                   onClicked: pageStack.push(page1, {color: UbuntuColors.orange})
               }
               Button {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: i18n.tr("Ultimas Noticias do EcoLover")
                   onClicked: pageStack.push(Qt.resolvedUrl("notice.qml"))
               }
               Button {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: i18n.tr("Creditos")
                   onClicked: pageStack.push(Qt.resolvedUrl("credits.qml"))
               }
           }
       }

        Page {
                   title: "O seu Consumo"
                   id: page1
                   visible: false
                   property alias color: rectangle.color

                   Rectangle {
                       id: rectangle
                       width: 450; height: 25
                       color: "transparent"

                       Row {
                           anchors.horizontalCenter: parent.horizontalCenter
                           anchors.verticalCenter: parent.verticalCenter

                           spacing: 3


                           Rectangle { width: 96; height: 25; radius: 20.0
                                       color: "transparent"
                                       border.color: "#000000"
                                       Text {
                                           id: identific
                                           text: qsTr("<b>Nome Dispositivo</b>")

                                           anchors.horizontalCenter: parent.horizontalCenter
                                                  anchors.baseline: alignRect.bottom
                                            font.pixelSize: 10
                                            anchors.verticalCenter: parent.verticalCenter
                                                    anchors.centerIn: parent.Center
                                                    anchors.rightMargin: 5
                                       }
                           }


                           Rectangle { width: 45; height: 25; radius: 20.0
                                       color:  "transparent"
                                       border.color: "#000000"
                                       Text {
                                           id: numero
                                           text: qsTr("<b>Q</b>")
                                           anchors.horizontalCenter: parent.horizontalCenter
                                                  anchors.baseline: alignRect.bottom
                                            font.pixelSize: 10
                                            anchors.verticalCenter: parent.verticalCenter
                                                    anchors.centerIn: parent.Center
                                                    anchors.rightMargin: 5

                                       }
                           }
                           Rectangle { width: 55; height: 25; radius: 20.0
                                       color:  "transparent"
                                       border.color: "#000000"
                                       Text {
                                           id: amperes
                                           text: qsTr("<b>Amperes</b>")
                                           anchors.horizontalCenter: parent.horizontalCenter
                                                  anchors.baseline: alignRect.bottom
                                            font.pixelSize: 10
                                            anchors.verticalCenter: parent.verticalCenter
                                                    anchors.centerIn: parent.Center
                                                    anchors.rightMargin: 5

                                       }
                           }
                           Rectangle { width: 45; height: 25; radius: 20.0
                                       color:  "transparent"
                                       border.color: "#000000"
                                       Text {
                                           id: voltes
                                           text: qsTr("<b>Voltes</b>")
                                           anchors.horizontalCenter: parent.horizontalCenter
                                                  anchors.baseline: alignRect.bottom
                                            font.pixelSize: 10
                                            anchors.verticalCenter: parent.verticalCenter
                                                    anchors.centerIn: parent.Center
                                                    anchors.rightMargin: 5

                                       }
                           }
                           Rectangle { width: 80; height: 25; radius: 20.0
                                       color: "transparent"
                                       border.color: "#000000"
                                       Text {
                                           id: wats
                                           text: qsTr("<b>número de wats</b>")
                                           anchors.horizontalCenter: parent.horizontalCenter
                                                  anchors.baseline: alignRect.bottom
                                                font.pixelSize: 10
                                            anchors.verticalCenter: parent.verticalCenter
                                                    anchors.centerIn: parent.Center
                                                    anchors.rightMargin: 5

                                       }
                           }
                           Rectangle { width: 50; height: 25; radius: 20.0
                                       color: "transparent"
                                       border.color: "#000000"
                                       Text {
                                           id: hora
                                           text: qsTr("<b>Hora(s)</b>")
                                           anchors.horizontalCenter: parent.horizontalCenter
                                                  anchors.baseline: alignRect.bottom
                                            font.pixelSize: 10
                                            anchors.verticalCenter: parent.verticalCenter
                                                    anchors.centerIn: parent.Center
                                                    anchors.rightMargin: 5
                                       }
                           }
                           Rectangle { width: 60; height: 25; radius: 20.0
                                       color: "transparent"
                                       border.color: "#000000"
                                       Text {
                                           id: mins
                                           text: qsTr("<b>mintuto(s)</b>")
                                           anchors.horizontalCenter: parent.horizontalCenter
                                                  anchors.baseline: alignRect.bottom
                                            font.pixelSize: 10
                                            anchors.verticalCenter: parent.verticalCenter
                                                    anchors.centerIn: parent.Center
                                                    anchors.rightMargin: 5
                                       }
                           }
                       }
                       Item {
                           id: input

                       TextField {width: 37; height: 20;
                           id: q1
                           x: 115
                           y: 28
                           anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.centerIn: parent
                           placeholderText: "0"
                           font.pixelSize: 12
                           text: "0"
                           anchors.verticalCenterOffset: 42
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 45; height: 25; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q2
                           x: 115
                           y: 43
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 62
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q3
                           x: 115
                           y: 61
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 81
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q4
                           x: 115
                           y: 80
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 101
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q5
                           x: 115
                           y: 96
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 121
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q6
                           x: 115
                           y: 112
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 141
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q7
                           x: 115
                           y: 131
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 161
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q8
                           x: 115
                           y: 150
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 181
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q9
                           x: 115
                           y: 168
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 201
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q10
                           x: 115
                           y: 185
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 221
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q11
                           x: 115
                           y: 203
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 241
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: q12
                           x: 115
                           y: 221
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           transformOrigin: Item.Center
                           anchors.verticalCenterOffset: 260
                           anchors.horizontalCenterOffset: 134
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a1
                           x: 158
                           y: 28
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 42
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a2
                           x: 158
                           y: 45
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 62
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a3
                           x: 158
                           y: 63
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: ""
                           anchors.verticalCenterOffset: 81
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a4
                           x: 158
                           y: 80
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 101
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a5
                           x: 158
                           y: 98
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 121
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a6
                           x: 158
                           y: 114
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 141
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a7
                           x: 158
                           y: 132
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 161
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a8
                           x: 158
                           y: 150
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 181
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a9
                           x: 158
                           y: 168
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 201
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a10
                           x: 158
                           y: 185
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 221
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a11
                           x: 158
                           y: 203
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 241
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: a12
                           x: 158
                           y: 221
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 260
                           anchors.horizontalCenterOffset: 183
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v1
                           x: 215
                           y: 28
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 42
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v2
                           x: 215
                           y: 45
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 62
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v3
                           x: 215
                           y: 63
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: ""
                           anchors.verticalCenterOffset: 81
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v4
                           x: 215
                           y: 80
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 101
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v5
                           x: 215
                           y: 98
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 121
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v6
                           x: 215
                           y: 114
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 141
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v7
                           x: 215
                           y: 132
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 161
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v8
                           x: 215
                           y: 150
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 181
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v9
                           x: 215
                           y: 168
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 201
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v10
                           x: 215
                           y: 185
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 221
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v11
                           x: 215
                           y: 203
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 241
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 37; height: 20
                           id: v12
                           x: 215
                           y: 221
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 260
                           anchors.horizontalCenterOffset: 234
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w1
                           x: 269
                           y: 28
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 42
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w2
                           x: 269
                           y: 45
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 62
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w3
                           x: 269
                           y: 63
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 81
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w4
                           x: 269
                           y: 80
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 101
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w5
                           x: 269
                           y: 98
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 121
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w6
                           x: 269
                           y: 114
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 141
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w7
                           x: 269
                           y: 132
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 161
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w8
                           x: 269
                           y: 150
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 181
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w9
                           x: 269
                           y: 168
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 201
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w10
                           x: 269
                           y: 185
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 221
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w11
                           x: 269
                           y: 203
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 241
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 57; height: 20
                           id: w12
                           x: 269
                           y: 221
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 260
                           anchors.horizontalCenterOffset: 293
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h1
                           x: 349
                           y: 28
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 42
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h2
                           x: 349
                           y: 45
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 62
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h3
                           x: 349
                           y: 63
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 81
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h4
                           x: 349
                           y: 80
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 101
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h5
                           x: 349
                           y: 98
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 121
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h6
                           x: 349
                           y: 114
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 141
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h7
                           x: 349
                           y: 132
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 161
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h8
                           x: 349
                           y: 150
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 181
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h9
                           x: 349
                           y: 168
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 201
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h10
                           x: 349
                           y: 185
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 221
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h11
                           x: 349
                           y: 203
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 241
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 49; height: 20
                           id: h12
                           x: 349
                           y: 221
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 260
                           anchors.horizontalCenterOffset: 361
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m1
                           x: 397
                           y: 28
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 42
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m2
                           x: 397
                           y: 45
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 62
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m3
                           x: 397
                           y: 63
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 81
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m4
                           x: 397
                           y: 80
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 101
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m5
                           x: 397
                           y: 98
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 121
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m6
                           x: 397
                           y: 114
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 141
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m7
                           x: 397
                           y: 132
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 161
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m8
                           x: 397
                           y: 150
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 181
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m9
                           x: 397
                           y: 168
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 201
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m10
                           x: 397
                           y: 185
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 221
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m11
                           x: 397
                           y: 203
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 241
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                       TextField {width: 45; height: 20
                           id: m12
                           x: 397
                           y: 221
                           anchors.centerIn: parent
                           font.pixelSize: 12
                           placeholderText: "0"
                           text: "0"
                           anchors.verticalCenterOffset: 260
                           anchors.horizontalCenterOffset: 421
                           validator: IntValidator{}
                           horizontalAlignment: TextInput.AlignHCenter
                           style: TextFieldStyle {
                               textColor: "black"
                               background: Rectangle { width: 40; height: 17; radius: 20.0

                                   color: "#F0EBEB"
                                   implicitWidth: 40
                                   implicitHeight: 24
                                   border.color: "#000000"
                                   border.width: 1
                               }
                           }
                           onTextChanged: {console.log(parseInt(text,10) + 1000)}
                       }
                    }
                       Column {
                           x: 3
                           y: 31
                           spacing: 2
                            // You should implement it yourself

                           Item {
                               width: 100; height: 250

                               ListModel {

                                   id: myModel
                                   ListElement { type: "computador";  }
                                   ListElement { type: "Frigorifico";  }
                                   ListElement { type: "Ventoinha";  }
                                   ListElement { type: "Televisao";  }
                                   ListElement { type: "Monitores";  }
                                   ListElement { type: "Portáteis";  }
                                   ListElement { type: "Ar condicionado";  }
                                   ListElement { type: "Maquina de café";  }
                                   ListElement { type: "Lampeda1";  }
                                   ListElement { type: "Lampeda2";  }
                                   ListElement { type: "Aquecedor";  }
                                   ListElement { type: "Forno eléctrico";  }
                               }

                               Component {
                                   id: myDelegate
                                   Text { text: type   }
                               }

                               ListView {
                                    spacing: 3
                                   anchors.fill: parent
                                   model: myModel
                                   delegate: myDelegate
                               }

                           }
                       }
                       Button {
                           x: 250
                           y: 282
                         text: "Calcular"
                         onClicked: {
                       sumquant= parseInt(q1.text, 10) + parseInt(q2.text, 10) + parseInt(q2.text, 10) +parseInt(q3.text, 10) + parseInt(q4.text, 10) + parseInt(q5.text, 10) + parseInt(q6.text, 10) + parseInt(q7.text, 10) + parseInt(q8.text, 10) + parseInt(q9.text, 10) + parseInt(q10.text, 10) + parseInt(q11.text, 10) + parseInt(q12.text, 10)
                              sumhor= parseInt(h1.text, 10) + parseInt(h2.text, 10) + parseInt(h3.text, 10) + parseInt(h4.text, 10) + parseInt(h5.text, 10) + parseInt(h6.text, 10) + parseInt(h7.text, 10) + parseInt(h8.text, 10) + parseInt(h9.text, 10) + parseInt(h10.text, 10) + parseInt(h11.text, 10) + parseInt(q1.text, 10)
                               sumM= parseInt(m1.text, 10) + parseInt(m2.text, 10) + parseInt(m3.text, 10) + parseInt(m4.text, 10) + parseInt(m5.text, 10) + parseInt(m6.text, 10) + parseInt(m7.text, 10) + parseInt(m8.text, 10) + parseInt(m9.text, 10) + parseInt(m10.text, 10) + parseInt(m11.text, 10) + parseInt(m12.text, 10) / 60
                              sumV= parseInt(v1.text, 10) + parseInt(v2.text, 10) + parseInt(v3.text, 10) + parseInt(v4.text, 10) + parseInt(v5.text, 10) + parseInt(v6.text, 10) + parseInt(v7.text, 10) + parseInt(v8.text, 10) + parseInt(v9.text, 10) + parseInt(v10.text, 10) + parseInt(v11.text, 10) + parseInt(v12.text, 10)
                              sumA= parseInt(a1.text, 10) + parseInt(a2.text, 10) + parseInt(a3.text, 10) + parseInt(a4.text, 10) + parseInt(a5.text, 10) + parseInt(a6.text, 10) + parseInt(a7.text, 10) + parseInt(a8.text, 10) + parseInt(a9.text, 10) + parseInt(a10.text, 10) + parseInt(a11.text, 10) + parseInt(a12.text, 10)
                               sumw= parseInt(w1.text, 10) + parseInt(w2.text, 10) + parseInt(w3.text, 10) + parseInt(w4.text, 10) + parseInt(w5.text, 10) + parseInt(w6.text, 10) + parseInt(w7.text, 10) + parseInt(w8.text, 10) + parseInt(w9.text, 10) + parseInt(w10.text, 10) + parseInt(w11.text, 10) + parseInt(w12.text, 10)
                             t= sumM + sumhor
                              x1= sumquant * sumw
                              y1= x1 * t
                              k= y1 /1000
                              r= k * 0.101
                       }
                       }
                       Text {
                           id: resultado
                           x: 3
                           y: 317
                           text:"o preço a pagar será  " + r + " Euros"
                       }
                       Button {
                           id: limpar
                           x: 347
                           y: 282
                           text: "recalcular"
                           onClicked: {
                               r = 0
                           }

                       }


                   }
     }
   }
 }

