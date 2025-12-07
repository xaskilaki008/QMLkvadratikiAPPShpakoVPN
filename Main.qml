import QtQuick
import QtQuick.Controls 2.15

Window {
    id: window
    width: 1000
    height: 710
    visible: true
    title: qsTr("Тут много квадратиков, жми на любой")

    // Модель для хранения квадратиков
    property var squareButtons: []
    property int redSquareIndex: -1  // Индекс текущего красного квадрата
    property color defaultColor: "#367b95"
    property color redColor: "#ff0000"

    // Функция для инициализации квадратиков
    function initSquareButtons() {
        squareButtons = [button, button1, button2, button3, button4,
                        button5, button6, button7, button8, button9,
                        button10, button11, button12, button13, button14,
                        button15, button16, button17, button18, button19,
                        button20, button21, button22, button23, button24]
    }

    // Функция для выбора случайного квадратика
    function selectRandomSquare() {
        // Сначала сбрасываем все квадратики в синий цвет
        resetAllSquares()

        // Выбираем случайный индекс (кроме красной кнопки - она под индексом 0)
        var randomIndex
        do {
            randomIndex = Math.floor(Math.random() * (squareButtons.length - 1)) + 1
        } while (randomIndex === redSquareIndex)

        redSquareIndex = randomIndex

        // Устанавливаем выбранному квадратику красный цвет
        if (squareButtons[redSquareIndex]) {
            squareButtons[redSquareIndex].background.color = redColor
        }
    }

    // Функция для сброса всех квадратиков в синий цвет
    function resetAllSquares() {
        for (var i = 1; i < squareButtons.length; i++) {
            if (squareButtons[i]) {
                squareButtons[i].background.color = defaultColor
            }
        }
        redSquareIndex = -1
    }

    Component.onCompleted: {
        initSquareButtons()
    }

    // Красная кнопка - первая в массиве
    Button {
        id: button
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 15
        anchors.topMargin: 17
        background: Rectangle {
            id: redButtonBg
            color: redColor
            radius: 20
        }

        onClicked: {
            selectRandomSquare()
        }
    }

    // Остальные квадратики
    Button {
        id: button1
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 115
        anchors.topMargin: 17
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button2
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 215
        anchors.topMargin: 17
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button3
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 315
        anchors.topMargin: 17
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button4
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 415
        anchors.topMargin: 17
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button5
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 15
        anchors.topMargin: 117
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button6
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 115
        anchors.topMargin: 117
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button7
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 215
        anchors.topMargin: 117
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button8
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 315
        anchors.topMargin: 117
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button9
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 415
        anchors.topMargin: 117
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button10
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 15
        anchors.topMargin: 316
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button11
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 115
        anchors.topMargin: 316
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button12
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 215
        anchors.topMargin: 316
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button13
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 315
        anchors.topMargin: 316
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button14
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 415
        anchors.topMargin: 316
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button15
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 15
        anchors.topMargin: 411
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button16
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 115
        anchors.topMargin: 411
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button17
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 215
        anchors.topMargin: 411
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button18
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 315
        anchors.topMargin: 411
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button19
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 415
        anchors.topMargin: 411
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button20
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 15
        anchors.topMargin: 217
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button21
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 115
        anchors.topMargin: 217
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button22
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 215
        anchors.topMargin: 217
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button23
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 315
        anchors.topMargin: 217
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }

    Button {
        id: button24
        width: 80
        height: 80
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 415
        anchors.topMargin: 217
        background: Rectangle {
            color: defaultColor
            radius: 20
        }
    }
}
