import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import org.joware.neogotchi 1.0

Window {
    visible: true

    width: 490; height: 720
    MouseArea {
        anchors.bottomMargin: 80
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Rectangle {
        id: screen

        width: 490; height: 720

        SystemPalette { id: activePalette }

        Pet{
            id:pet
        }

        Item {
            width: parent.width
            anchors { top: parent.top; bottom: toolBar.top }

            Image {
                id: background
                anchors.fill: parent
                source: "pics/background.png"
                fillMode: Image.PreserveAspectCrop

                Rectangle {
                    id: properties
                    x: 319
                    y: 84
                    radius: 8
                    width: 142
                    height: 106
                    color: "#ffffff"
                    opacity: 0.7

                    ProgressBar {
                        id: healthBar
                        width: 135
                        height: 15
                        anchors.left: parent.left
                        anchors.leftMargin: 3
                        anchors.top: parent.top
                        anchors.topMargin: 5
                        antialiasing: true
                        transformOrigin: Item.Center
                        orientation: 1
                        value: pet.health

                        Text {
                            id: health
                            height: 14
                            anchors { left: parent.left; verticalCenter: parent.verticalCenter }
                            text: "Health"
                        }
                    }

                    ProgressBar {
                        id: hungerBar
                        width: 135
                        height: 15
                        anchors.left: parent.left
                        anchors.leftMargin: 3
                        anchors.top: healthBar.bottom
                        anchors.topMargin: 5
                        antialiasing: true
                        transformOrigin: Item.Center
                        orientation: 1
                        value: 0.67

                        Text {
                            id: hunger
                            height: 14
                            text: "Hunger"
                            anchors.top: parent.top
                            anchors.topMargin: 0
                        }
                    }

                    ProgressBar {
                        id: thirstBar
                        width: 135
                        height: 15
                        anchors.left: parent.left
                        anchors.leftMargin: 3
                        anchors.top: hungerBar.bottom
                        anchors.topMargin: 5
                        antialiasing: true
                        transformOrigin: Item.Center
                        orientation: 1
                        value: 0.79

                        Text {
                            id: thirst
                            height: 14
                            text: "Thirst"
                            anchors.top: parent.top
                            anchors.topMargin: 0
                        }
                    }

                    ProgressBar {
                        id: funBar
                        width: 135
                        height: 15
                        anchors.left: parent.left
                        anchors.leftMargin: 3
                        anchors.top: thirstBar.bottom
                        anchors.topMargin: 5
                        antialiasing: true
                        transformOrigin: Item.Center
                        orientation: 1
                        value: 0.42

                        Text {
                            id: fun
                            height: 14
                            text: "Fun"
                            anchors.top: parent.top
                            anchors.topMargin: 0
                        }
                    }

                    ProgressBar {
                        id: cleanlinessBar
                        width: 135
                        height: 15
                        anchors.left: parent.left
                        anchors.leftMargin: 3
                        anchors.top: funBar.bottom
                        anchors.topMargin: 5
                        antialiasing: true
                        transformOrigin: Item.Center
                        orientation: 1
                        value: 0.5

                        Text {
                            id: cleanliness
                            height: 14
                            text: "Cleanliness"
                            anchors.top: parent.top
                            anchors.topMargin: 0
                        }
                    }
                }
            }
        }

        Rectangle {
            id: toolBar
            width: parent.width; height: 30
            color: activePalette.window
            anchors.bottom: screen.bottom

            Button {
                id: feedButton
                anchors { left: parent.left; verticalCenter: parent.verticalCenter }

                text: "Feed"
                anchors.leftMargin: 10
                onClicked: pet.setHealth(0.05)

            }
            Button {
                id: drinkButton
                anchors { left: feedButton.right; verticalCenter: parent.verticalCenter }
                text: "Drink"
                anchors.leftMargin: 10
                onClicked: console.log("This doesn't do anything yet...")
            }
            Button {
                id: playButton
                anchors { left: drinkButton.right; verticalCenter: parent.verticalCenter }
                text: "Play"
                anchors.leftMargin: 10
                onClicked: console.log("This doesn't do anything yet...")
            }
            Button {
                id: cleanButton
                anchors { left: playButton.right; verticalCenter: parent.verticalCenter }
                text: "Clean"
                anchors.leftMargin: 10
                onClicked: console.log("This doesn't do anything yet...")
            }
        }
    }


}

