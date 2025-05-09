## 1. Was ist SDN?

**SDN (Software-Defined Networking)** bedeutet, dass man Netzwerke nicht mehr direkt an jedem einzelnen Gerät (z. B. Switch oder Router) steuern muss, sondern alles zentral über **Software** steuert.

Die Idee: Man trennt die **Steuerung** vom eigentlichen **Datenverkehr**.  
Dadurch wird das Netzwerk flexibler, einfacher zu verwalten und automatisierbar.

---

## 2. Wo wird SDN verwendet?

SDN wird oft eingesetzt in:

- **Rechenzentren** (z. B. bei Cloud-Anbietern wie Amazon oder Google)
- **Telekommunikation** (z. B. 5G-Netze)
- **Großen Firmen-Netzwerken**
- **Forschung & Lehre**

---

## 3. Wie funktioniert SDN?

Ein SDN-Netzwerk besteht aus drei Teilen:

### 1. Anwendungsebene (Application Layer)
- Hier laufen Programme, die das Netzwerk steuern (z. B. Firewall, Load Balancer)

### 2. Steuerungsebene (Control Layer)
- Hier sitzt der **SDN-Controller** – eine Software, die das Netzwerk zentral steuert

### 3. Geräteebene (Infrastructure Layer)
- Switches und Router, die nur Daten weiterleiten
- Sie bekommen ihre Anweisungen vom Controller

---

## 4. Wichtige Begriffe, Protokolle und Tools

### Protokolle
- **OpenFlow** – das wichtigste Protokoll, mit dem der Controller mit den Geräten spricht
- **REST-API, gRPC** – Schnittstellen, über die Programme mit dem Controller sprechen

### Tools und Software
- **OpenDaylight**, **ONOS** – bekannte SDN-Controller
- **Mininet** – ein Tool, mit dem man SDN-Netzwerke einfach simulieren kann
- **Ryu**, **Floodlight**, **POX** – weitere Controller (meist für Forschung)

---

## 5. Grafik zur SDN-Architektur
+----------------------------+
| Anwendungen (z. B. Firewall) |
+------------▲---------------+
|
| REST-API
|
+------------▼---------------+
| SDN-Controller (Software) |
+------------▲---------------+
|
| OpenFlow
|
+------------▼---------------+
| Geräte (Switches, Router) |
+----------------------------+

## Kurz zusammengefasst

- SDN bedeutet: Netzwerksteuerung wird zentralisiert und automatisiert.
- Man steuert Switches und Router über Software – nicht mehr einzeln.
- Das Netzwerk wird dadurch flexibler und einfacher zu verwalten.
- OpenFlow ist ein zentrales Protokoll.
- Wichtige Tools: OpenDaylight, Mininet, ONOS, Ryu

