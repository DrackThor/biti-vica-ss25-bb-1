# Storage Area Network (SAN)

## 1. Begriff

Ein **Storage Area Network (SAN)** ist ein hochleistungsfähiges Netzwerk, das Server mit einem zentralen Speichersystem verbindet.
Es ermöglicht, dass mehrere Server gleichzeitig und schnell auf große Datenmengen zugreifen können, so, als wären die Festplatten direkt im Server verbaut.

SANs arbeiten **blockbasiert**. Das bedeutet, der Server spricht nicht mit Dateien, sondern mit kleinen **Datenblöcken** – das ist schneller und flexibler, besonders für Datenbanken und virtuelle Maschinen.



## 2. Kontext und Anwendungsbereiche

Ein SAN wird vor allem dann eingesetzt, wenn:

* große Datenmengen zentral gespeichert und verwaltet werden sollen,
* mehrere Server gleichzeitig auf dieselben Daten zugreifen müssen,
* Datenredundanz, Lastverteilung und Hochverfügbarkeit erforderlich sind,
* Virtualisierung oder Clusterlösungen zum Einsatz kommen.


### Typische Anwendungsbeispiele:

* **Virtualisierung mit VMware vSphere, Microsoft Hyper-V oder KVM**
* **Datenbankserver (z. B. Oracle, MS SQL Server, PostgreSQL)**
* **Backup- und Recovery-Systeme**
* **Business Continuity und Disaster Recovery**



## 3. Aufbau eines SAN

Ein SAN besteht aus folgenden Hauptkomponenten:

* **Server (Hosts):** greifen auf Daten zu.
* **SAN-Switches:** verbinden Server und Speicher.
* **Storage-Systeme:** stellen physischen Speicher zur Verfügung (HDDs, SSDs).
* **Host Bus Adapter (HBA):** Netzwerkkarten in den Servern, speziell für SAN-Verbindungen.
* **LUNs (Logical Unit Numbers):** logisch zugewiesene Speicherbereiche für einzelne Server.


### Was ist eine LUN und welche Rolle spielt sie im SAN?

Im Kontext eines SAN ist eine **LUN (Logical Unit Number)** eine logisch definierte Einheit des Speichers, die einem oder mehreren Servern zur Verfügung gestellt wird.
Man kann sich eine LUN wie eine **virtuelle Festplatte** vorstellen, die aus dem zentralen Speicherpool herausgeschnitten und gezielt zugewiesen wird.

Jeder Server sieht seine LUN(s) so, als wäre es ein lokales Laufwerk – obwohl die Daten physisch auf einem weit entfernten Storage-System liegen.
Der Zugriff erfolgt **blockbasiert**, also auf Ebene einzelner Datenblöcke.

#### Warum sind LUNs wichtig?

* **Zugriffssteuerung:** Nur bestimmte Server können auf bestimmte LUNs zugreifen.
* **Flexibilität:** LUNs lassen sich nach Bedarf erstellen, vergrößern oder verschieben.
* **Optimierung:** Man kann je nach Anwendung schnelle oder günstige Speicherbereiche als LUNs zuweisen.

#### Beispiel:

Ein SAN mit 100 TB Speicher wird in 10 LUNs zu je 10 TB aufgeteilt:

* Server A bekommt LUN 1 und 2 → Zugriff auf 20 TB
* Server B bekommt LUN 3 → Zugriff auf 10 TB

Jeder Server nutzt nur seinen zugewiesenen Speicherbereich.



## 4. Funktionsweise: Datenzugriff im SAN

* Ein Server (Host) will Daten lesen oder schreiben.
* Er sendet über einen **Host Bus Adapter (HBA)** eine Anfrage in Richtung SAN.
* Der **SAN-Switch** leitet die Anfrage weiter zum richtigen Speichergerät.
* Das **Storage-Gerät** empfängt die Anfrage und liefert die gewünschten Datenblöcke zurück.
* Für den Server sieht es so aus, als käme die Antwort von einer lokalen Festplatte.



## 5. Protokolle

Die Kommunikation im SAN basiert auf verschiedenen Protokollen:

* **FCP (Fibre Channel Protocol):** Schnelles und verlässliches Protokoll zur Übertragung von SCSI-Befehlen über Fibre Channel.
* **iSCSI:** Günstige Alternative, überträgt SCSI-Befehle über TCP/IP über Ethernet.
* **FCoE (Fibre Channel over Ethernet):** Kombiniert Fibre Channel mit Ethernet – spart Hardware und vereinfacht die Infrastruktur.
* **FC-NVMe:** Extrem leistungsstark für Flash-Speicher, erlaubt parallele Befehle und hohe IOPS.



## 6. Beispielhafte SAN-Architektur

```text
+------------+      +------------+
|  Server 1  |      |  Server 2  |
+------------+      +------------+
        |                  |
     +------------------------+
     |     SAN-Switches       |
     +------------------------+
        |                  |
+-------------+    +--------------+
|  Storage 1  |    |  Storage 2   |
+-------------+    +--------------+
```



## 7. Vorteile

* **Hohe Geschwindigkeit:** Durch dedizierte Verbindungen und Blockzugriff
* **Skalierbarkeit:** Speicher kann ohne Downtime erweitert werden
* **Zentrale Verwaltung:** Speicherressourcen können dynamisch zugewiesen werden
* **Redundanz & Ausfallsicherheit:** Multipathing, RAID, Clustering
* **Virtualisierung:** VMs können live verschoben werden (vMotion, Live Migration)



## 8. Nachteile

* **Kosten:** Teure Hardware, Software und Wartung
* **Komplexität:** Erfordert spezielles Know-how für Design, Betrieb und Fehlerbehebung
* **Fehlkonfiguration:** Fehler können viele Systeme betreffen
* **Herstellerabhängigkeit:** Oft proprietäre Lösungen


