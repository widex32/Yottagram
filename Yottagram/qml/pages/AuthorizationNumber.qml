/*

This file is part of Yottagram.
Copyright 2020, Michał Szczepaniak <m.szczepaniak.000@gmail.com>

Yottagram is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Yottagram is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Yottagram. If not, see <http://www.gnu.org/licenses/>.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    Connections {
        target: authorization
        onWaitingForPassword: {
            pageStack.replace(Qt.resolvedUrl("AuthorizationPassword.qml"));
        }
        onWaitingForCode: {
            pageStack.replace(Qt.resolvedUrl("AuthorizationCode.qml"))
        }
    }

    SilicaFlickable {
        anchors.fill: parent

        contentHeight: column.height

        PullDownMenu {
            MenuItem {
                text: qsTr("Proxy settings")
                onClicked: pageStack.push(Qt.resolvedUrl("../components/ProxySettings.qml"))
            }
        }

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Login")
            }

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Number with +XXX")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            TextField {
                id: number
                width: column.width
                inputMethodHints: Qt.ImhDialableCharactersOnly
                validator: RegExpValidator { regExp: /^[\+0-9]{1,100}$/ }
                Keys.onReturnPressed: {
                    authorization.sendNumber(number.text)
                }
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Submit")
                onClicked: authorization.sendNumber(number.text)
            }
        }
    }
}
