# Type 1 Hypervisor (Bare Metal Hypervisor)

## 1. Definition des Begriffs

Ein **Type 1 Hypervisor** (Bare Metal Hypervisor) ist eine Virtualisierungssoftware, die direkt auf der physischen
Hardware eines Servers installiert wird. Im Gegensatz zum Type 2 Hypervisor läuft er nicht auf einem Betriebssystem,
sondern bildet die erste Softwareschicht über der Hardware. Dadurch ermöglicht er den Betrieb mehrerer unabhängiger
virtueller Maschinen (VMs) mit eigenen Betriebssystemen und Anwendungen auf einer einzigen physischen Maschine.

## 2. Einsatzkontext

Type 1 Hypervisoren sind das Rückgrat moderner IT-Infrastrukturen und kommen in verschiedenen Bereichen zum Einsatz:

### a) Rechenzentren und Cloud-Umgebungen

Type 1 Hypervisoren optimieren die Servernutzung in Rechenzentren, indem sie zahlreiche virtuelle Maschinen auf vielen
physischen Servern hosten. Cloud-Anbieter wie AWS, Azure und Google Cloud setzen sie für Skalierbarkeit, Sicherheit und
Mandantenfähigkeit ein
([IBM](https://www.ibm.com/topics/hypervisors), [DigitalOcean](https://www.digitalocean.com/community/conceptual-articles/what-is-bare-metal-hypervisor)).

### b) Unternehmens-IT und Servervirtualisierung

Type 1 Hypervisoren helfen Unternehmen, ihre Serverlandschaft zu konsolidieren. Mehrere virtuelle Server laufen auf
einer leistungsfähigen Hardware, was Kosten spart, das Management vereinfacht und die Ausfallsicherheit erhöht
([Wikipedia](https://de.wikipedia.org/wiki/Hypervisor), [OpenMetal](https://openmetal.io/resources/blog/bare-metal-critical-to-iaas-strategy/)).

### c) Hochverfügbarkeit und Disaster Recovery

Type 1 Hypervisoren bieten Funktionen wie Live-Migration (Verschieben laufender VMs zwischen Hosts ohne Ausfallzeit)
oder Snapshots (Sicherung des VM-Zustands). Damit lassen sich Wartungsarbeiten ohne Unterbrechung durchführen und
Ausfallzeiten minimieren ([DigitalOcean](https://www.digitalocean.com/community/conceptual-articles/what-is-bare-metal-hypervisor)).

### d) Test- und Entwicklungsumgebungen

Auch für Entwickler und Tester bieten Type 1 Hypervisoren Vorteile: Unterschiedliche Betriebssysteme und
Konfigurationen können parallel auf derselben Hardware getestet werden.

## 3. Technische Funktionsweise (Überblick)

### a) Architektur und Aufbau

Ein Type 1 Hypervisor wird direkt auf der Hardware installiert und übernimmt die vollständige Kontrolle
über die Ressourcenverwaltung. Die wichtigsten Komponenten sind:

- **Hypervisor-Kern:** Steuert die Zuteilung von CPU, RAM, Netzwerk und Speicher an die VMs.
- **Virtuelle Maschinen:** Jede VM erhält virtuelle Hardware und kann ein eigenes Betriebssystem ausführen.
- **Management-Schnittstellen:** Über spezielle Tools oder APIs werden VMs erstellt, konfiguriert und überwacht.

### b) Ressourcenmanagement und Isolation

Der Hypervisor teilt die physischen Ressourcen dynamisch den VMs zu. Er sorgt dafür, dass jede VM isoliert
läuft und Fehler oder Angriffe in einer VM nicht auf andere übergreifen. Die Kommunikation zwischen VMs und der
Zugriff auf Hardware werden vom Hypervisor kontrolliert
([IBM](https://www.ibm.com/topics/hypervisors), [nfina.com](https://nfina.com/bare-metal-hypervisor/)).

### c) Treiber und Hardwarezugriff

Da kein Host-Betriebssystem vorhanden ist, bringt der Hypervisor eigene Gerätetreiber mit, um die Hardware
anzusteuern. Moderne Hypervisoren unterstützen eine breite Palette an Hardwarekomponenten und bieten spezielle
Schnittstellen für hohe Performance (z.B. paravirtualisierte Treiber)
([Red Hat](https://www.redhat.com/en/topics/virtualization/what-is-KVM)).

### d) Management und Automatisierung

Die Verwaltung erfolgt meist über zentrale Management-Tools, die eine übersichtliche Steuerung vieler Hosts
und VMs ermöglichen. APIs erlauben die Integration in Automatisierungslösungen und Cloud-Management-Plattformen.

## 4. Gängige Protokolle, Produkte und Tools

### a) Bekannte Type 1 Hypervisor-Produkte

| Produkt           | Anbieter         | Besonderheiten                       |
|-------------------|-----------------|--------------------------------------|
| VMware ESXi       | VMware          | Marktführer, umfangreiche Features   |
| Microsoft Hyper-V | Microsoft       | In Windows Server integriert         |
| KVM               | Open Source     | Im Linux-Kernel enthalten            |
| Xen               | Open Source     | Häufig in Cloud-Umgebungen           |
| Oracle VM Server  | Oracle          | Für Oracle-Umgebungen optimiert      |

### b) Management-Tools

- **VMware vCenter:** Verwaltung mehrerer ESXi-Hosts und VMs
- **Microsoft System Center Virtual Machine Manager:** Verwaltung von Hyper-V-Umgebungen
- **OpenStack:** Open-Source-Cloud-Management für KVM und Xen

### c) Protokolle und Schnittstellen

- **APIs:** REST, SOAP für Automatisierung und Integration
- **Virtuelle Netzwerkschnittstellen:** z.B. virtio (KVM), VM Bus (Hyper-V)
- **Live-Migration-Protokolle:** Für den unterbrechungsfreien Umzug von VMs

## 5. Architektur und grafische Veranschaulichung

### Schematische Darstellung

```bash
+---------------------------------------+
| Virtuelle Maschinen |
| (jeweils eigenes Betriebssystem) |
+---------------------------------------+
| Type 1 Hypervisor |
+---------------------------------------+
| Physische Hardware |
| (CPU, RAM, Storage, Netzwerk, etc.) |
+---------------------------------------+
```

**Erklärung:**  
Der Type 1 Hypervisor sitzt direkt auf der Hardware und stellt die Ressourcen den VMs zur Verfügung.
Jede VM ist vollständig isoliert und kann unabhängig betrieben werden.

### Vergleich: Type 1 vs. Type 2 Hypervisor

| Merkmal            | Type 1 Hypervisor        | Type 2 Hypervisor         |
|--------------------|-------------------------|---------------------------|
| Installationsort   | Direkt auf Hardware     | Auf Host-Betriebssystem   |
| Performance        | Sehr hoch               | Niedriger (Overhead)      |
| Sicherheit         | Sehr hoch (Isolation)   | Geringer                  |
| Einsatzbereich     | Rechenzentren, Unternehmen | Testumgebungen, Desktop |
| Beispiele          | VMware ESXi, Hyper-V, KVM| VirtualBox, VMware Workstation |

## 6. Quellenangaben

- [DigitalOcean: Bare Metal Hypervisors – Benefits and Use Cases](https://www.digitalocean.com/community/conceptual-articles/what-is-bare-metal-hypervisor)
- [IBM: What are Hypervisors?](https://www.ibm.com/topics/hypervisors)
- [Wikipedia: Hypervisor](https://de.wikipedia.org/wiki/Hypervisor)
- [Red Hat: What is KVM?](https://www.redhat.com/en/topics/virtualization/what-is-KVM)
- [OpenMetal: Bare Metal - A Critical Component of the Modern IaaS Strategy](https://openmetal.io/resources/blog/bare-metal-critical-to-iaas-strategy/)
- [Microsoft: Hyper-V Overview](https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/about/)
- [nfina.com: Bare Metal Hypervisors – Benefits, Use Cases, and Key Features](https://nfina.com/bare-metal-hypervisor/)
