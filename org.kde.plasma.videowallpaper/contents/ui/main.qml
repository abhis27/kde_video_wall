/*
 * Abhis27.Github.Io
 */

import QtQuick 2.1
import QtMultimedia 5.5
import org.kde.plasma.extras 2.0 as PlasmaExtras

Item {
    id: root
    property var playing: true
    
	MediaPlayer {
        id: mediaPlayer
        autoPlay: true
        loops: MediaPlayer.Infinite
        volume: wallpaper.configuration.VideoVolume/100
        source: wallpaper.configuration.VideoPath
    }

    VideoOutput {
        fillMode: VideoOutput.PreserveAspectCrop
        anchors.fill: parent
        source: mediaPlayer
    }
    
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed: mediaPlayer.playbackState === MediaPlayer.PlayingState ? mediaPlayer.pause() : mediaPlayer.play()
    }
}
