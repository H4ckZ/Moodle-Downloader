# Anleitung zum Moodle VideoDownload

## Setup

Voraussetzung für die Verwendung der Skripte ist ffmpeg, welches auf dem System installiert sein muss.  
Die Installation erfolgt einfach über den Systemeigenen Paketmanager, hier am Beispiel von Ubuntu:

```bash
git clone https://github.com/H4ckZ/Moodle-Downloader.git
sudp apt update && sudo apt install -y ffmpeg
```

## Wie man zu den Links kommt

* Ansurfen der Moodle-Seite mit dem Video.
* Mit Ctrl + Shift + i in den Inspector Modus im Firefox / Chrome wechseln
* Im Reiter Network im Suche-Feld die Endung 'm3u8' eingeben.  
Damit sollen nach dem Starten des Videos die Playlist-Files mit der Endung '.m3u8' bzw. den Namen 'playlist' oder 'chunklist' gefunden werden.
* Diesen Link kopieren.

## Das Downloaden
### Variante 1

Video starten damit die Playlist-Files geladen werden und den Url mit Rechtsklick und Copy-Url kopieren. Danach das .sh Script 'MoodleDownload.sh' starten mit

```bash
    ./MoodleDownload.sh 'url' 'Outputname'
```

### Variante 2

Um mehrere Files auf einmal herunterladen zu können einfach ein Textfile erstellen und die gewünschten Links dort sammeln.  
Am Ende jedes Links einfach einen Strichpunkt (;) einfügen und dahinter den gewünschten Namen der Output-Datei angeben (ohne Erweiterung - also z.B. ohne .mp4 zum Schluss).  
Ein Beispiel ist im mitgelieferten example.txt zu finden.

Anschließend den Download mit folgendem Befehl starten:

```bash
./bulkDownload.sh example.txt
```

![Screenshot here](https://user-images.githubusercontent.com/21077042/55534879-ca9f0800-56b5-11e9-9368-5c57d7b5eb67.png)

