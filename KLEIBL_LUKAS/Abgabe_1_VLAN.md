
# VLAN (Virtual Local Area Network)

## Worum handelt es sich bei diesem Begriff?

In einem standardmaessigen Netz koennen alle Geraete miteinander kommunizieren. Das ist nicht immer erwuenscht, daher kann man mit VLANs ein grosses Gesamtnetz in mehrere kleinere Teilnetze unterteilen. Dies ermoeglicht eine logische Trennung der Daten, um so zum Beispiel verschiedene Abteilungen voneinander zu trennen.

VLANs sind vergleichbar mit Armbaendern in einem Club oder Konzert:  
Eine Person mit einem gruenen Armband darf nur in Bereiche mit gruener Aufschrift, mit einem blauen Armband nur in Bereiche mit blauer Aufschrift.

## In welchem Kontext wird der Begriff verwendet?

VLANs kommen in fast allen IT-Umgebungen zum Einsatz. Sie dienen der logischen Strukturierung des Netzwerks. Typische Anwendungsfaelle sind:

- Segmentierung zur besseren Uebersicht und Verwaltung  
- Eindaemmung von Broadcast-Traffic durch kleinere Broadcast-Domaenen  
- Effiziente Nutzung von Bandbreite und Ressourcen  
- Organisatorische Trennung zum Beispiel die "IT", "HR" und "Marketing" in je eigene VLANs

Durch VLANs entsteht eine klare Netzstruktur mit administrativen und sicherheitstechnischen Vorteilen.

## (grobe) technische Funktionsweise

VLANs arbeiten mit sogenannten 'Tags'. Diese sind vergleichbar mit den vorher referenzierten Armbaendern. Jedes Paket, das an einen Switch geschickt wird, erhaelt einen Tag. 

Beispiel: ein Switch-Port mit der Konfiguration `switchport access vlan 4` taggt das Paket mit 'VLAN 4'.

Dadurch wird sichergestellt, dass die Daten nur innerhalb des Netzes/VLANs bleiben. VLANs arbeiten auf **Layer 2** (OSI-Modell), daher kann die Kommunikation grundsaetzlich nur zwischen Geraeten im selben VLANs stattfinden. Ein **Layer-3-faehiges Geraet** (Router) ermoeglich die Kommunikation zwischen verschiedenen VLANs -> **Inter-VLAN Routing**.

## Gaengige Protokolle, Produkte, Tools

### Protokolle:

- **IEEE 802.1Q** Standard fuer VLAN-Tagging in Ethernet-Frames  
- **VTP (VLAN Trunking Protocol)** Ein Cisco-eigenes Protokoll zur VLAN-Verwaltung ueber mehrere Switches hinweg
- **VXLAN (Virtual Extensible LAN)** VLAN-Erweiterung auf bis zu 16 Millionen VLANs, spannt ein Layer-2-Netz ueber ein Layer-3-Netz (somit agiert ein Computer, welches physisch in einem anderen Bundesland steht so, als waere er lokal angeschlossen (Einsatz in zum Beispiel Rechenzentren))

### Produkte:

Mittlerweile unterstuetzen fast alle modernern standartisierten Netzwerkgeraete VLANs.

Beispiel:

- Cisco Catalyst (Switches)  
- Cisco 8000-Series (Router)  
- Fortinet FortiGate (Firewall)  
- Netgate pfSense (Firewall)

### Tools:

- **Wireshark** Analyse von VLAN-Tags in Netzwerkpaketen  
- **Cisco Packet Tracer, GNS3** Simulation von VLANs und Netzwerken

## ggf. Architektur/Schaubild/grafische Veranschaulichung

'IT-PC1' kann nur mit 'IT-PC2' kommunizieren oder ueber 'Router/Firewall' (Router-on-a-Stick) mit anderen VLANs sprechen.  
Zwischen 'Switch 1' und 'Switch 2' besteht ein **Trunk-Port**, ueber den mehrere VLANs transportiert werden.  
Access-Ports zwischen Switch und PCs erlauben hingegen nur ein einzelnes VLAN.

![Abbildung 1 VLAN-Topologie](image1.png)
