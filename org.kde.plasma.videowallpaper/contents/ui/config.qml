/*
 * Abhis27.Github.Io 
 */

import QtQuick 2.1
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.2
import QtQuick.Controls 1.0 as QtControls

// for "units"
import org.kde.plasma.core 2.0 as PlasmaCore


ColumnLayout {
    id: root
    property alias cfg_VideoPath: videoPath.text
    property alias cfg_VideoVolume: videoVolume.value

    RowLayout {
        spacing: units.largeSpacing / 2

        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper_org.kde.plasma.videowallpaper", "Video:")
        }
		QtControls.TextField {
			id: videoPath
			Layout.fillWidth: true
		}
        QtControls.Button {
            id: videoPathPick
			text: "Select File"
			onClicked: fileDialog.open()
        }
    }

    RowLayout {
        spacing: units.largeSpacing / 2

        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper_org.kde.plasma.videowallpaper", "Volume:")
        }
		QtControls.SpinBox {
			id: videoVolume
			minimumValue: 0
			maximumValue: 100
		}
    }

    RowLayout {
        spacing: units.largeSpacing / 2

        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - units.largeSpacing
            horizontalAlignment: Text.AlignRight
        }
		QtControls.Label {
			text: i18nd("plasma_wallpaper_org.kde.plasma.videowallpaper", "Hope You Can Select Video & Adjust Volume :(")
		}
    }

	FileDialog {
		id: fileDialog
		title: i18nd("plasma_wallpaper_org.kde.plasma.videowallpaper", "Open a video")
		nameFilters: "Video files (*.mp4 *.mpg *.ogg *.mov *.webm *.flv *.matroska *.avi *.mkv)"
		onAccepted: cfg_VideoPath = fileDialog.fileUrls[0]
	}

    Item { // tighten layout
        Layout.fillHeight: true
    }
}
