# Thema: VXLAN *Virtual eXtensible LAN*
## Sehr 90er mit dem Namen ...
**Autorin:** Andrea Ungerer
**Datum:** 07.05.2025

# Was ist VXLAN?
VXLAN ist eine *Virtualisierungsmethode*, die auf dem *Layer 2* des OSI-Modells (_Data Link Layer_) arbeitet. Damit können virtuelle Layer-2-Netzwerke erstellt werden, die über einem bestehenden Layer-3-Netzwerk stehen. Das steigert die Skalierbarkeit und Flexibilität, weil es mehr logische Netzwerke (mehrere Milldionen, statt nur knapp 4000) ermöglicht.

## VXLAN Protokoll
VXLAN ist ein Overlay-Netzwerkprotokoll, das auf dem UDP-Protokoll basiert. Es kapselt Layer-2-Frames in Layer-3-Pakete, um sie über IP-Netzwerke zu transportieren. VXLAN verwendet eine 24-Bit-VNI (VXLAN Network Identifier) anstelle der 12-Bit eines regulären VLAN, um virtuelle Netzwerke zu identifizieren. 

## Terminologie
**VXLAN** (Virtual Extensible LAN): Technologie, die die gleichen Ethernet-Layer-2-Netzwerkdienste wie VLAN bietet, jedoch eine größere Erweiterbarkeit und Flexibilität bietet. (s.o.)
**VNID** (Vxlan Network Identifier): Eine 24-Bit-Segment-ID, die die Broadcast-Domäne definiert. austauschbar mit "VXLAN Segment ID"
**VTEP** (Virtual Tunnel Endpoint) - Dies ist das Gerät, das die Kapselung und Entkapselung durchführt.
**NVE** (Network Virtual Interface) - Logische Schnittstelle, bei der die Kapselung und Entkapselung erfolgt.

## Unterschied zu VLAN
Der Unterschied zwischen VXLAN und einem regulären VLAN liegt nicht nur in den Endpunkten, sondern auch in der Skalierbarkeit und der Art der Kapselung. Hier sind die Hauptunterschiede:

### Skalierbarkeit:
VLAN: VLANs verwenden eine 12-bit-ID, was bedeutet, dass sie auf 4094 nutzbare IDs begrenzt sind. Das ist bei größeren Netzwerken ein Problem. VXLAN verwendet eine 24 Bit, un eignet sich darum für Data Center und generell größere Umgebungen.

### Kapselung:
VLANs arbeiten auf Layer 2. VXLAN kapselt dagegen Layer-2-Ethernet-Frames in Layer-3-UDP-Pakete. 

### Netzwerkisolation:
VLAN: bietet Netzwerkisolation auf Layer 2, was für kleinere Netzwerke ausreichend ist, während VXLAN Netzwerkisolation auf einer höheren Ebene vorsieht.

# ELI5
Ich bin die Bücherei von Unterstinkenbrunn. Schön, ruhig. Wissen wir eh. Ich habe Platz für 400 Bücher. Aber jetzt schreibt mir jemand einfach noch fünf Bücher. Hoitaus. Ich kann die aber nicht mehr in Regal stellen, weil ich ja keinen Platz mehr habe. Gut, ich eröffne ein Archiv in Oberstinkenbrunn. Dort stelle ich meine Bücher hin. Gartenbau und Hundemode und so. Jetzt sind meine Regale quasi unbegrenzt. Aber wenn in Unterstinkenbrunn jemand ein Buch aus dem Archiv braucht, muss ich es erst wieder in die Bücherei zurückbringen. Dazu wird es extra eingepackt und zurückgebracht. Am Ziel werden die Bücher aus ihren Transportkisten ausgepackt, an der Rezeption abgegeben und den wartenden Hunde- und Gartenfans übergeben.

## In dieser (Top-) Analogie sind:
- Bücher Datenpakete
- Regale in der Bibliothek Unterstinkenbrunn klassische VLAN-Netzwerke
- Regale in Oberstinkenbrunn virtuelle VXLAN-Netzwerke
- Transportkisten die UDP-Kapselung

# Links
[Data Tracker](https://datatracker.ietf.org/doc/html/rfc7348)
[Juniper Networks](https://www.juniper.net/de/de/research-topics/what-is-vxlan.html)
[Cisco Info](https://www.cisco.com/c/de_de/support/docs/switches/nexus-9000-series-switches/118978-config-vxlan-00.html)

## Misc
[Was auch immer das heißt, Cisco?](assets/image.png)

## Quotes
> VXLAN ist schon ganz cool.
> ich