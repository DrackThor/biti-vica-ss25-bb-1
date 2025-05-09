# _Filesystems allgemein_

Ein Filesystem, oder Dateisystem, ist eine Struktur die in einem Betriebssystem verwendet wird, mit dem Daten auf verschiedenen Speichermedien organisiert, gespeichert, verwaltet, wiedergefunden werden können. Es definiert auch, wie dieser Ablauf funktioniert.
Es werden einige Dinge von Filesystems verwaltet:
* Zuweisung von Speicheradressen
* Metadaten (Dateinamen, Dateigrößen, Dateirechte, ..)
* Zugriffsrechte

Dateisysteme finden in allen Bereichen der IT Anwendung, in denen auch Daten gespeichert werden müssen. Betriebssysteme, Speichermedien, Smartphones, Storage, ...  
Je nach notwendigem Anwendungsfall, werden  andere Dateisysteme verwendet.

Die grobe technische Funktionsweise eines Dateisystems sieht wie folgt aus:
Dateisysteme arbeiten auf Blockebene. Speicher werden in gleich große Einheiten, sogenannte Blöcke, aufgeteilt. Diese werden dann vom Dateisystem verwaltet. Jede Datei braucht dabei mindestens einen Block.  
Normalerweise besteht ein Dateisystem aus einer Grundstruktur mit verschiedenen Bereichen.
* Bootsektor
* Superblock
* Metadatenblöcke
* Datenblöcke

_*IMAGE_1*_

Der Bootsektor enthält in Maschinen-Code alle Informationen zum Starten des Betriebssystems. Normalerweise ist es der erste Sektor des physischen Speichers.  
Der Superblock enthält Verwaltungsinformationen über das Dateisystem. Er beinhaltet Informationen darüber, wie das System aufgebaut ist, wie groß es ist, welche Blockgröße verwendet wird, wie viele Inodes existieren, wo diese beginnen, etc.  
Die Metadatenblöcke speichern Informationen über Dateien. Keinen Dateiinhalt, sondern Metadaten über die Dateien selber. Sogenannte Inodes (Index Node).   
Datenblöcke speichern den tatsächlichen Dateiinhalt. Verschiedene Dateisysteme verwenden verschiedene Datenstrukturen zur Organisation.  
Verschiedene Dateisysteme haben auch verschiedene Datenstrukturen zur Organisation. Etwa File Allocation Tables oder B-Trees.  
Modernere Dateisysteme benutzen Journaling. Es wird vor dem tatsächlichen schrieben der Datei ein Journal angelegt. Dieses enthält Infos über die Dinge, die an der Datei geändert werden sollen. Das hilft bei Unterbrechungen wie etwa Stromausfällen bei der Rekonstruktion.  
Dateisysteme verwalten freie Speicherbereiche über Bitmap-Tabellen oder Blocklisten. Dateisysteme versuchen prinzipiell, Dateien zusammenhängend zu speichern, um Fragmentierung zu verhindern.  
Dateinamen werden in Verzeichnistabellen gespeichert. Diese Tabellen verknüpfen einen Namen oder einen Pfad mit einer Inode-Nummer.

Ablauf beim Speichern einer Datei:  
freie Blöcke suchen --> Inode anlegen --> Metadaten speichern --> Dateiname und Pfad mit Inode verknüpfen --> (ins Journal eintragen) --> Dateiinhalt  in Datenblöcke ablegen

Ablauf beim Öffnen einer Datei:  
Pfad auflösen zur Inode --> Inode lesen --> Datenblöcke laden


# _Besonderheiten von verschiedenen Dateisystemen._
## FAT
Ein älteres Dateisystem, welches einfach aufgebaut ist. Sein Ursprung liegt bei DOS und alten Windows Systemen. Es funktioniert mittels eines *File Allocation Tables*, bei dem in einer Tabelle gespeichert wird, welche Datenblöcke zu welcher Datei gehören. Es gibt kein Journaling, keine Berechtigungen, und damit auch keine Sicherheitsfunktionen. Es eignet sich allerdings sehr gut, für Wechselmedien wie USB-Sticks oder SD-Karten.

## NTFS
Das *New Technology File System* (NTFS) ist der Standard von modernen Windows Systemen. Es speichert Informationen in einem Master File Table (MFT). Dort bekommt jede Datei einen eigenen Eintrag. Darin stehen der Dateiinhalt (falls klein genug), ansonsten ein Verweis auf Datenblöcke, und klassische Metadaten. NTFS besitzt Journaling, Kompression, Verschlüsselung, Dateiberechtigungen und Hardlinks.  
Die einzige Einschränkung besteht darin, dass es proprietär ist. Sprich, Microsoft only. Unter Linux kann nur gelesen, aber nicht geschrieben werden (außer mit zusätzlichen Tools).
## ext4
ext4 ist das standrad Linux Dateisystem. Es benutzt die klassische UNIX-Dateisystem Struktur mit Inodes als Basis. ext4 besitzt ebenso wie NTFS Journaling, kann dies aber entweder mit Metadaten oder auch dem Dateiinhalt selbst. Es fehlen allerdings auch wichtige Funktionen, die bei moderneren Dateisystemen oft üblich sind, wie etwa Snapshots, Cheksummen, oder die RAID-Funktionalität.
## btrfs
btrfs arbeitet mit dem *Copy-on-Write* (CoW) Grundprinzip. Wenn Daten geändert werden, überschreibt btrfs nicht direkt die alten Daten, sondern schreibt neue Daten und ändert dann den Pointer auf diese neuen Daten.  
btrfs arbeitet mit B-Tree Strukturen. Alle Daten (Inhalt und Metadaten) werden in B-Trees organisiert.  
Es gibt hier auch kein Journaling, da dies durch CoW nicht notwendig ist. Änderungen passieren immer erst, wenn das CoW erfolgreich war.  
btrfs arbeitet außerdem auch mit Prüfsummen, die für alle Daten in einem Checksum-Tree abgespeichert werden.  
btrfs unterstützt RAID auf Dateisystemebene  
btrfs kann Snapshots vom Dateisystem erstellen, ohne Daten zu duplizieren.
