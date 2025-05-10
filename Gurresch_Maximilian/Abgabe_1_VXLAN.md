# VXLAN

**Virtual eXtensible Local-Area Network** ist (ergänzend zu **VLAN**) ein virtuelles Layer-2 Netzwerk (Overlay) auf einem darunterliegenden Layer-3 Netzwerk.
Es ist:
- virtualisiert
- skalierbar (2^24 mögliche Segmente)
- Über Layer-4 erweiterbar (in UDP-Paketen verschachtelt)

## Einsatzgebiete
**Cloud Anbieter & Datacenter**
Flexibles und skalierbares Management von Netzwerken für virtuelle Maschinen, unabhängig von Standort

**Software Defined Networking**
Netzwerk ist unabhängig von physischem Netzwerk und kann schnell erstellt oder rekonstruiert werden. Bei modularen Stacks wie Kubernetes essenziell.


## Technische Funktionsweise
Eingeteilt in Overlay & Underlay

![](https://arubanetworking.hpe.com/techdocs/AOS-CX/10.13/HTML/vxlan/Content/Resources/Images/vxlan-03.png)
[Quelle](https://arubanetworking.hpe.com/techdocs/AOS-CX/10.13/HTML/vxlan/Content/Chp_Over/vxl-net-mod-10.htm)

1. **Overlay**
	VXLAN kapselt Layer-2-Frames in UDP-Pakete, die über ein IP-basiertes Layer-3-Netzwerk übertragen werden. Das ermöglicht die Ausdehnung von Layer-2-Netzen über Routing-Grenzen.
2. **VXLAN Network Identifier (VNI)** 
	VXLAN-Tunnel identifizierbar über 24 Bit lange VNI, dh. es gibt 16.777.215 logische Netzwerke
3. **Virtual Tunnel Endpoints (VTEP)**.
	Tunnelendpunkte die die (Ent-) Kapselung der Pakete übernehmen. Brauchen jeweils ein Interface ins lokale Netz und ins Layer-3-Netz. Logische Position also immer am Rand des Overlay Netzwerks.
4. **Underlay**
	Physisches Layer-3-IP-Netzwerk, für den Datentransport zuständig. Also IPs, Routing, Switches, ...



![](https://images.ctfassets.net/aoyx73g9h2pg/6ry4NMKCeY6BEAL61idwbM/e6420170dc91d8e678c7935825351ef3/What-is-VXLAN-Diagram.jpg)
[Quelle](https://www.cbtnuggets.com/blog/technology/networking/what-is-vxlan)



## VXLAN vs. VLAN

 Feature         | VLAN        | VXLAN  
-----------------|-------------|---------------------
 Max. Netze      | 4096        | 16.777.216
 Layer           | 2           | Overlay auf Layer 3
 Skalierbarkeit  | -           | +
 Isolation       | Grundlegend | Mandantengenau

---

## Praktisches Beispiel

### Ausgangslage
2 Hosts auf 2 verschiedenen Netzwerken

**host1**
- Host-IP: 1.2.3.4/24 (Public IP)
- NIC-name: eth0

**host2**
- Host-IP: 10.1.1.10/24
- NIC-name: eth0

**VXLAN**
- VNI: 202
- Net: 192.168.202.0/24


### Setup
#### host1:

```bash
ip link add vxlan202 type vxlan id 202 dstport 4789 dev eth0
ip addr add 192.168.202.2/24 dev vxlan202
ip link set dev vxlan202 up
```

- `vxlan202` Name des interfaces
- `id 202` VNI
- `dstport 4789` UDP Port auf dem das VXLAN läuft
- `dev eth0` phyisisches Interface



#### host2:
```bash
ip link add vxlan202 type vxlan id 202 dstport 4789 dev eth0 remote 1.2.3.4
ip addr add 192.168.202.3/24 dev vxlan202
ip link set dev vxlan202 up
```

Darauffolgend könnte man Bridge Interfaces dem VXLAN zuweisen um sie an VMs weiterzugeben.


#### Quellen
https://www.juniper.net/us/en/research-topics/what-is-vxlan.html
https://www.ip-insider.de/was-ist-vxlan-a-726595/
https://datatracker.ietf.org/doc/html/rfc7348
https://gist.github.com/zOrg1331/85e45bb2e1f4a024f339f81b961294bd
