# VLAN (Virtual Local Area Network)

## Einleitung

In modernen Netzwerken ist es oft notwendig, große Netze logisch zu unterteilen – sei es zur Trennung von Abteilungen, zur Erhöhung der Sicherheit oder zur besseren Kontrolle des Datenverkehrs. Ein VLAN (Virtual Local Area Network) ist eine bewährte Methode, um genau das zu erreichen. Es ermöglicht es, innerhalb eines physischen Netzwerks mehrere logische Teilnetze zu bilden.

---

## Was ist ein VLAN?

Ein VLAN ist ein virtuelles Teilnetz, das Geräte innerhalb eines lokalen Netzwerks logisch gruppiert, unabhängig davon, an welchen Switchport oder physischen Standort sie angeschlossen sind. Geräte in demselben VLAN können direkt miteinander kommunizieren – Geräte in unterschiedlichen VLANs hingegen nur über Routing.

Statt also für jede Abteilung einen eigenen Switch zu verwenden, können alle Geräte über einen einzigen physikalischen Switch betrieben werden – logisch aber getrennt.

---

## Kontext & Anwendung

VLANs finden sich in verschiedensten IT-Umgebungen:

- **Unternehmensnetzwerke:** Trennung von HR, IT, Vertrieb, Management
- **Bildungseinrichtungen:** Aufteilung in Studenten-, Lehrpersonal- und Verwaltungsnetz
- **Rechenzentren:** Mandantenfähigkeit, Trennung von virtuellen Maschinen
- **Öffentliche Einrichtungen:** Trennung von internen und Gäste-Netzen (z. B. WLAN)

Ohne VLAN müsste man separate physische Netzwerke mit eigener Verkabelung und eigenen Switches aufbauen. Das ist teuer und unflexibel.

---

## Technische Funktionsweise

Ein VLAN basiert auf dem Prinzip, dass jedes Datenpaket eine **VLAN-ID** (zwischen 1 und 4094) mit sich tragen kann. Diese VLAN-ID wird mithilfe des **IEEE 802.1Q Standards** als "Tag" in den Ethernet-Frame eingefügt.

### VLAN-Typen

- **Access-VLAN** (Untagged): Port ist nur einem VLAN zugeordnet – z. B. Arbeitsplatz-PC
- **Trunk-VLAN** (Tagged): Port überträgt mehrere VLANs – z. B. Verbindung zwischen Switches

### Beispiel

Ein Unternehmen hat folgende Abteilungen:

| Abteilung | VLAN-ID | IP-Netzbereich     |
|-----------|---------|--------------------|
| HR        | 10      | 192.168.10.0/24    |
| IT        | 20      | 192.168.20.0/24    |
| Gäste     | 30      | 192.168.30.0/24    |

Ohne Routing können Clients nur innerhalb ihres VLANs kommunizieren. Der Datenverkehr wird also voneinander abgeschottet – auch wenn alles über denselben physischen Switch läuft.

---

## Protokolle & Standards

- **IEEE 802.1Q:** Definiert das VLAN-Tagging auf Ethernet-Ebene (standardisiert)
- **VTP (VLAN Trunking Protocol):** Cisco-eigener Standard zur VLAN-Verwaltung
- **GVRP (GARP VLAN Registration Protocol):** Automatisches Registrieren von VLANs

Die meisten modernen Geräte verwenden 802.1Q. Bei Cisco-Umgebungen wird oft zusätzlich VTP verwendet, um VLANs zentral zu verwalten und auf andere Switches zu propagieren.

---

## Tools & Produkte

Typische Geräte und Tools, die VLANs unterstützen:

- **Cisco Catalyst / Nexus Switches**
- **Aruba / HP ProCurve**
- **Netgear ProSafe Switches**
- **Unifi Switches und Access Points**
- **pfSense Firewall (Open Source)**
- **VMware ESXi / vSphere (VLANs für VMs)**

---

## Vorteile von VLANs

- **Sicherheit:** Nutzer in unterschiedlichen VLANs können nicht direkt aufeinander zugreifen
- **Kostenersparnis:** Nur ein physisches Netzwerk nötig, keine doppelte Verkabelung
- **Flexibilität:** Clients können durch Konfiguration schnell umgezogen werden
- **Skalierbarkeit:** VLANs lassen sich einfach erweitern oder anpassen
- **Performance:** Broadcast-Domänen sind kleiner → weniger Netzwerklast

---

## Mögliche Herausforderungen

- VLANs sind logisch – Fehler in der Konfiguration (z. B. falsche Zuordnung von Ports) können schwer zu finden sein.
- VLAN-Routing benötigt Layer-3-Switch oder Router.
- VLAN-Überschreitende Kommunikation kann zusätzliche Firewallregeln erfordern.

---

## Grafische Darstellung

```plaintext
   
```
---

## VLAN vs. Subnetz – der Unterschied

Ein häufiger Irrtum ist, dass VLANs und Subnetze dasselbe sind. Sie hängen zwar eng zusammen, sind aber **nicht identisch**:

| Merkmal         | VLAN                             | Subnetz                            |
|-----------------|----------------------------------|-------------------------------------|
| Funktion        | Logische Segmentierung auf Layer 2 | IP-Adressen-Bereich auf Layer 3     |
| Trennung        | Durch Switches (MAC-basiert)     | Durch Router (IP-basiert)          |
| Kommunikation   | Direkt nur im selben VLAN möglich | Routing kann zwischen Subnetzen erfolgen |

→ VLANs regeln, **wer physisch logisch zusammengehört** – Subnetze regeln, **wie die IPs strukturiert sind**.

---

## Beispiel aus der Praxis: Schule oder Universität

Ein WLAN-Netz in einer Schule besteht aus drei Nutzergruppen:

- **Lehrer** (VLAN 10) – Zugang zu internen Servern
- **Schüler** (VLAN 20) – Nur Internetzugang
- **Gäste** (VLAN 30) – Nur für zeitlich beschränkten Zugang

Ein Netzwerkadmin konfiguriert alle Access Points so, dass sie drei SSIDs ausstrahlen – jede ist mit einem VLAN verbunden. Der Datenverkehr ist logisch getrennt, auch wenn alles über dieselbe Hardware läuft.

---

## Schritt-für-Schritt: VLAN-Konfiguration (Beispiel Cisco CLI)

```bash
# VLANs erstellen
Switch(config)# vlan 10
Switch(config-vlan)# name HR
Switch(config)# vlan 20
Switch(config-vlan)# name IT

# Ports zu VLANs zuweisen
Switch(config)# interface fastEthernet 0/1
Switch(config-if)# switchport mode access
Switch(config-if)# switchport access vlan 10

Switch(config)# interface fastEthernet 0/2
Switch(config-if)# switchport mode access
Switch(config-if)# switchport access vlan 20

# Trunk-Port konfigurieren (für Verbindung zu anderem Switch)
Switch(config)# interface gigabitEthernet 0/1
Switch(config-if)# switchport mode trunk
Switch(config-if)# switchport trunk allowed vlan 10,20
```
## Quellen
- https://www.elektronik-kompendium.de/sites/net/0906221.htm?
- https://www.youtube.com/watch?v=A9lMH0ye1HU&ab_channel=CertBros
