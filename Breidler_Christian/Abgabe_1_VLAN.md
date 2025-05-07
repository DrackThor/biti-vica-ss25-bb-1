# VLAN – Virtual Local Area Network

## 1. Was ist ein VLAN?

Ein **Virtual Local Area Network (VLAN)** ist ein logisches Teilnetz innerhalb eines physischen Netzwerks.  
Es ermöglicht die Gruppierung von Geräten, unabhängig von ihrer physischen Position, sodass sie sich verhalten, als wären sie im selben lokalen Netzwerksegment.  
Auf diese Weise können Netzwerke effizienter geplant und betrieben werden.

## 2. Kontext und Einsatzbereiche

VLANs kommen immer dann ins Spiel, wenn man ein Netzwerk besser strukturieren und übersichtlicher gestalten will.  
Statt alle Geräte in einem großen Netz miteinander kommunizieren zu lassen, kann man sie mithilfe von VLANs in kleinere, voneinander getrennte Bereiche aufteilen.  
Das sorgt nicht nur für mehr Ordnung, sondern erhöht auch die Sicherheit. Besonders praktisch ist das in Umgebungen, in denen viele verschiedene Nutzer oder Dienste unterwegs sind.  
Also überall dort, wo man gezielt trennen möchte, wer mit wem kommunizieren darf.

**Typische Einsatzbereiche:**

- **Unternehmen**: Trennung von Abteilungen wie HR, IT und Vertrieb zur Verbesserung der Sicherheit und Verwaltung  
- **Bildungseinrichtungen**: Segmentierung von Netzwerken für Studenten, Dozenten und Verwaltung  
- **Rechenzentren**: Isolierung von Servern und Diensten für Sicherheitszwecke  
- **Heimnetzwerke**: Trennung von IoT-Geräten, Gastnetzwerken und privaten Geräten zur Erhöhung der Sicherheit  

## 3. Technische Funktionsweise

VLANs arbeiten auf dem Data Link Layer (Layer 2 des OSI-Modells). Sie segmentieren Netzwerke, indem sie Broadcast-Domänen trennen.  
Jedem VLAN wird eine eindeutige VLAN-ID zugewiesen und wird durch diese identifiziert. Die Kommunikation zwischen VLANs ist standardmäßig nicht erlaubt.  
Um dies zu ermöglichen, wird ein Layer-3-Routing benötigt per Router oder Layer-3-Switch.

### Zuweisung von Geräten zu VLANs

Es gibt verschiedene Möglichkeiten Geräte einem VLAN zuzuweisen wie folgt:

- **Port-basiert**: Jedem Switch-Port wird eine VLAN-ID zugewiesen  
- **MAC-basiert**: Zuweisung basierend auf der MAC-Adresse des Geräts  
- **Protokollbasiert**: Zuweisung basierend auf dem verwendeten Netzwerkprotokoll  
- **Authentifizierungsbasiert**: Dynamische Zuweisung nach erfolgreicher Authentifizierung  

## 4. Gängige Protokolle, Produkte und Tools

### 4.1 Protokolle

- **VTP (VLAN Trunking Protocol)**: Cisco-eigenes Protokoll zur Verwaltung von VLANs über mehrere Switches hinweg
- **IEEE 802.1Q**: Standardprotokoll für VLAN-Tagging. Es fügt Ethernet-Frames eine 4-Byte-Markierung hinzu.
- **ISL (Inter-Switch Link)**: Proprietäres VLAN-Protokoll von Cisco (veraltet)
- **GVRP / MVRP**: Automatische VLAN-Registrierung über Netzwerk (selten verwendet)  

### 4.2 Produkte

- **Switches**: Cisco Catalyst, HP Aruba, Netgear ProSAFE, TP-Link JetStream  
- **Router**: Cisco ISR, MikroTik RouterBOARD, Ubiquiti EdgeRouter  
- **Firewall-Appliances**: pfSense, Fortinet, Sophos  

### 4.3 Tools

- **Konfigurationsoberflächen**: Cisco IOS, HP ProVision, WebGUIs von TP-Link/Netgear  
- **Netzwerk-Monitoring**: PRTG Network Monitor, SolarWinds NPM  
- **Netzwerk-Management**: Cisco Prime Infrastructure, Ubiquiti UniFi Controller  

## 5. Architektur / Schaubild

Folgende Grafik zeigt ein Netzwerk mit zwei Switches, die über eine Trunk-Verbindung miteinander verbunden sind.  
Es existieren zwei VLANs (VLAN 10 und VLAN 20), die jeweils PCs enthalten, die logisch voneinander getrennt sind.  
Die Trunk-Verbindung erlaubt es, beide VLANs über ein gemeinsames Verbindungskabel zwischen den Switches zu übertragen.  
Geräte im gleichen VLAN können miteinander kommunizieren, Geräte in unterschiedlichen VLANs sind ohne Routing voneinander isoliert.

![VLAN-Architektur](https://lh3.googleusercontent.com/blogger_img/APIUyshO4FBjakX2ZuyJpKz1Rctcxicng3Fxi6czRNCSF4Ns6FqHCR_1LjHtvKsUaUeBKjnlNzY4CMI0kq-I=s1600)

**Grobe Veranschaulichung eines VLANs:**

![Schaubild](https://www.dirks-computerecke.de/wp-content/uploads/2023/10/vlan-schematische-darstellung-600x306.jpg)
