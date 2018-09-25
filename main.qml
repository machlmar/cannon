import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
	visible: true
	title: qsTr("Hello World")

	height: 800
	width: 1600

	// battlefield
	Rectangle {
		anchors.fill: parent
		color: "lightBlue"

		// angle slider
		Text {
			id: idAngleText
			text: "Angle:"
			x: 20
			y: 20
		}
		Slider {
			id: idAngleSlider
			anchors.verticalCenter: idAngleText.verticalCenter
			anchors.left: idAngleText.right
			anchors.leftMargin: 5
			width: 200
			height: 20
			minimumValue: 0
			maximumValue: 100
			value: 0
			visible: true
		}

		// fire button
		Button {
			text: "Fire"
			x: 20
			y: 70
			width: 70
			height: 25
		}

		Rectangle {
			id: idGroud
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.bottom: parent.bottom
			height: parent.height / 16

			color: "green"
		}

		// canon
		Rectangle {
			id: idCannon
			x: 100
			anchors.bottom: idGroud.top
			anchors.bottomMargin: 10
			width: 6
			height: 30
			color: "black"
			rotation: idAngleSlider.value
		}
		// cannon body
		Rectangle {
			id: idCannonBody
			x: idCannon.x - 20
			width: 40
			anchors.bottom: idGroud.top
			height: 30
			color: "black"
			radius: 5
			visible: false
		}
	}

//	Component.onCompleted: showFullScreen()
}
