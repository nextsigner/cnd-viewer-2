import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0

Window {
    id: app
    visible: true
    width: app.fs*10
    height: app.fs*10
    x: (Screen.width-app.width)/2
    y: (Screen.height-app.height)/2
    color: 'black'
    property int fs: Screen.width*0.02
    property string textData: '?'
    Item{
        id: xApp
        anchors.fill: parent
        Flickable{
            anchors.fill: parent
            contentWidth: parent.width
            contentHeight: data.contentHeight+app.fs*2
            Text{
                id: data
                font.pixelSize: app.fs
                color: 'white'
                width: xApp.width-app.fs
                anchors.top: parent.top
                anchors.topMargin: app.fs
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WordWrap
                textFormat: Text.RichText
            }
        }
        MouseArea{
            anchors.fill: parent
            onDoubleClicked: app.close()
        }
    }
    Component.onCompleted: {
        //let txt='Este es un texto de ejemplo Este es un texto de ejemplo Este es un texto de ejemplo Este es un texto de ejemplo Este es un texto de ejemplo Este es un texto de ejemplo Este es un texto de ejemplo Este es un texto de ejemplo Este es un texto de ejemplo '
        data.text=app.textData
    }
}
