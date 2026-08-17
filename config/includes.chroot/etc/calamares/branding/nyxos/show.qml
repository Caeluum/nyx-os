import QtQuick 2.0
import calamares.slideshow 1.0

Presentation {
    id: presentation

    function nextSlide() {
        presentation.goToNextSlide()
    }

    Timer {
        interval: 6500
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: presentation.nextSlide()
    }

    Slide {
        Image { anchors.fill: parent; source: "slide-welcome.svg"; fillMode: Image.PreserveAspectCrop }
        Rectangle {
            x: presentation.width * 0.055
            anchors.verticalCenter: parent.verticalCenter
            width: presentation.width * 0.53
            height: presentation.height * 0.73
            radius: 24
            color: "#b3070914"
            border.color: "#30ffffff"
            border.width: 1
            Image {
                id: welcomeLogo
                source: "logo-white.svg"
                width: parent.height * 0.25
                height: width
                fillMode: Image.PreserveAspectFit
                anchors.left: parent.left
                anchors.leftMargin: parent.width * 0.09
                anchors.top: parent.top
                anchors.topMargin: parent.height * 0.10
            }
            Text {
                anchors.left: welcomeLogo.left
                anchors.top: welcomeLogo.bottom
                anchors.topMargin: parent.height * 0.06
                text: "BEM-VINDO AO NYXOS 13"
                color: "#67e8f9"
                font.pixelSize: Math.max(13, presentation.height * 0.028)
                font.bold: true
                font.letterSpacing: 2
            }
            Text {
                anchors.left: welcomeLogo.left
                anchors.top: welcomeLogo.bottom
                anchors.topMargin: parent.height * 0.14
                width: parent.width * 0.82
                text: "Seu novo sistema\nestá chegando."
                color: "white"
                font.pixelSize: Math.max(30, presentation.height * 0.075)
                font.bold: true
                lineHeight: 0.92
            }
            Text {
                anchors.left: welcomeLogo.left
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height * 0.09
                width: parent.width * 0.82
                text: "A instalação continua em segundo plano. Conheça o NyxOS enquanto preparamos tudo."
                color: "#cbd5e1"
                font.pixelSize: Math.max(15, presentation.height * 0.032)
                wrapMode: Text.WordWrap
                lineHeight: 1.18
            }
        }
    }

    Slide {
        Image { anchors.fill: parent; source: "slide-plasma.svg"; fillMode: Image.PreserveAspectCrop }
        Rectangle {
            x: presentation.width * 0.055
            anchors.verticalCenter: parent.verticalCenter
            width: presentation.width * 0.49
            height: presentation.height * 0.58
            radius: 24
            color: "#b307101b"
            border.color: "#30ffffff"
            Text {
                x: parent.width * 0.09; y: parent.height * 0.12
                text: "KDE PLASMA 6 + WAYLAND"
                color: "#67e8f9"
                font.pixelSize: Math.max(13, presentation.height * 0.028)
                font.bold: true; font.letterSpacing: 2
            }
            Text {
                x: parent.width * 0.09; y: parent.height * 0.27
                width: parent.width * 0.82
                text: "Seu desktop.\nSuas regras."
                color: "white"
                font.pixelSize: Math.max(30, presentation.height * 0.075)
                font.bold: true; lineHeight: 0.94
            }
            Text {
                x: parent.width * 0.09; y: parent.height * 0.67
                width: parent.width * 0.82
                text: "Personalize painéis, atalhos, temas e fluxos de trabalho sem abrir mão de uma experiência moderna."
                color: "#cbd5e1"
                font.pixelSize: Math.max(15, presentation.height * 0.031)
                wrapMode: Text.WordWrap; lineHeight: 1.18
            }
        }
    }

    Slide {
        Image { anchors.fill: parent; source: "slide-performance.svg"; fillMode: Image.PreserveAspectCrop }
        Rectangle {
            x: presentation.width * 0.055
            anchors.verticalCenter: parent.verticalCenter
            width: presentation.width * 0.49
            height: presentation.height * 0.58
            radius: 24
            color: "#b309070f"
            border.color: "#30ffffff"
            Text {
                x: parent.width * 0.09; y: parent.height * 0.12
                text: "KERNEL LIQUORIX"
                color: "#c4b5fd"
                font.pixelSize: Math.max(13, presentation.height * 0.028)
                font.bold: true; font.letterSpacing: 2
            }
            Text {
                x: parent.width * 0.09; y: parent.height * 0.27
                width: parent.width * 0.82
                text: "Resposta rápida,\ndesde o primeiro boot."
                color: "white"
                font.pixelSize: Math.max(28, presentation.height * 0.068)
                font.bold: true; lineHeight: 0.94
            }
            Text {
                x: parent.width * 0.09; y: parent.height * 0.67
                width: parent.width * 0.82
                text: "O NyxOS traz o Liquorix por padrão, com foco em baixa latência e fluidez no desktop."
                color: "#d8d3e3"
                font.pixelSize: Math.max(15, presentation.height * 0.031)
                wrapMode: Text.WordWrap; lineHeight: 1.18
            }
        }
    }

    Slide {
        Image { anchors.fill: parent; source: "slide-foundation.svg"; fillMode: Image.PreserveAspectCrop }
        Rectangle {
            x: presentation.width * 0.055
            anchors.verticalCenter: parent.verticalCenter
            width: presentation.width * 0.49
            height: presentation.height * 0.58
            radius: 24
            color: "#b307111c"
            border.color: "#30ffffff"
            Text {
                x: parent.width * 0.09; y: parent.height * 0.12
                text: "DEBIAN 13 TRIXIE"
                color: "#67e8f9"
                font.pixelSize: Math.max(13, presentation.height * 0.028)
                font.bold: true; font.letterSpacing: 2
            }
            Text {
                x: parent.width * 0.09; y: parent.height * 0.27
                width: parent.width * 0.82
                text: "Uma base sólida.\nUma identidade nova."
                color: "white"
                font.pixelSize: Math.max(28, presentation.height * 0.068)
                font.bold: true; lineHeight: 0.94
            }
            Text {
                x: parent.width * 0.09; y: parent.height * 0.67
                width: parent.width * 0.82
                text: "Compatibilidade com o ecossistema Debian, KDE Plasma 6 e o visual próprio do NyxOS."
                color: "#cbd5e1"
                font.pixelSize: Math.max(15, presentation.height * 0.031)
                wrapMode: Text.WordWrap; lineHeight: 1.18
            }
        }
    }

    function onActivate() {
        presentation.currentSlide = 0
    }
}
