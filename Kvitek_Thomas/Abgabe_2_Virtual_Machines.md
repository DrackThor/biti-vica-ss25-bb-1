# Virtual Machines (VMs)

## 1. Was sind Virtual Machines?

Eine **Virtual Machine (VM)** ist eine softwarebasierte Emulation eines physischen Computers. Sie ermöglicht die Ausführung eines vollständigen Betriebssystems (Gast-Betriebssystem) auf einem Host-System, als wäre es eine eigenständige physische Maschine. VMs werden durch eine Schicht namens **Hypervisor** (oder Virtual Machine Monitor, VMM) verwaltet, die die Ressourcen des Host-Systems virtualisiert und den Gast-Betriebssystemen zur Verfügung stellt.

## 2. Kontext und Verwendung

Virtual Machines werden in verschiedenen Bereichen eingesetzt:

- **Servervirtualisierung**: Mehrere Server können auf einer physischen Maschine laufen, was Kosten und Energie spart.
- **Softwareentwicklung und -tests**: Entwickler können verschiedene Betriebssysteme und Konfigurationen isoliert testen.
- **Legacy-Software**: Ältere Anwendungen können auf moderner Hardware in einer kompatiblen VM-Umgebung laufen.
- **Sicherheit**: VMs bieten eine isolierte Umgebung, um potenziell schädliche Software zu analysieren.
- **Cloud Computing**: Cloud-Anbieter nutzen VMs, um Kunden flexible und skalierbare Ressourcen bereitzustellen.

## 3. Technische Funktionsweise

### Hypervisor-Typen im Detail:

#### 1. Typ-1 Hypervisor (Bare-Metal)
- **Architektur**: 
  - Läuft direkt auf der physischen Hardware ohne Host-Betriebssystem
  - Bildet die unterste Software-Schicht im System
  - Wird auch als "native" oder "bare-metal" Hypervisor bezeichnet

- **Funktionsweise**:
  - Übernimmt direkte Hardware-Steuerung
  - Erzeugt Virtualisierungsschicht zwischen Hardware und Gast-Systemen
  - Ermöglicht direkten Hardwarezugriff für bessere Performance
  - Verantwortlich für:
    - CPU-Virtualisierung (Intel VT-x/AMD-V)
    - Memory Management (Shadow Page Tables)
    - I/O-Virtualisierung (SR-IOV, Virtio)

- **Typische Einsatzgebiete**:
  - Enterprise-Servervirtualisierung
  - Cloud-Rechenzentren
  - Hochverfügbarkeitsumgebungen

- **Beispiele**:
  - VMware ESXi (marktführer im Enterprise-Bereich)
  - Microsoft Hyper-V (integriert in Windows Server)
  - Xen (Open-Source, besonders für Paravirtualisierung)
  - KVM (Linux-Kernel-integriert)

#### 2. Typ-2 Hypervisor (Hosted)
- **Architektur**:
  - Läuft als Anwendung auf einem Host-Betriebssystem
  - Nutzt Treiber und Services des Host-OS
  - Zusätzliche Abstraktionsebene zwischen Hardware und Gastsystemen

- **Funktionsweise**:
  - Nutzt Host-OS für Hardwarezugriffe
  - Implementiert Virtualisierung als Prozess im Host-System
  - Typischerweise etwas geringere Performance als Typ-1
  - Einfacher zu installieren und zu konfigurieren

- **Typische Einsatzgebiete**:
  - Entwicklung und Testumgebungen
  - Desktop-Virtualisierung
  - Bildungsumgebungen
  - Persönliche Nutzung

- **Beispiele**:
  - Oracle VirtualBox (kostenlos, plattformübergreifend)
  - VMware Workstation/Fusion (erweiterte Funktionen)
  - Parallels Desktop (optimiert für macOS)
  - QEMU (oft in Kombination mit KVM)

### Detailliertes Funktionsprinzip:

#### Hardware-Virtualisierung:
- **CPU-Virtualisierung**:
  - Nutzung von Hardware-Erweiterungen (Intel VT-x, AMD-V)
  - Erzeugung virtueller CPUs (vCPUs)
  - Zeitmultiplexing der physischen CPU-Ressourcen
  - Trap-and-Emulate Technik für privilegierte Befehle

- **Memory-Virtualisierung**:
  - Memory Management Units (MMU) Virtualisierung
  - Shadow Page Tables oder Nested Paging (EPT/RVI)
  - Memory Overcommit (Ballooning, Page Sharing)
  - NUMA-Awareness in modernen Hypervisoren

- **Storage-Virtualisierung**:
  - Virtuelle Festplatten (VMDK, VHD, QCOW2)
  - Thin/Thick Provisioning
  - Snapshots und differenzierende Images
  - Storage Live Migration

- **Netzwerk-Virtualisierung**:
  - Virtuelle Switches und Netzwerkkarten
  - VLAN- und VXLAN-Unterstützung
  - Netzwerk-Offloading (TSO, LRO)
  - Software-Defined Networking (SDN)

#### Ressourcenmanagement:
- **Scheduling**:
  - Fair Share Scheduling
  - Reservierungen und Limits
  - CPU Affinity und Pinning
  - NUMA-Optimierungen

- **Isolation**:
  - Vollständige Prozess- und Speicherisolation
  - Sicherheit durch Hardware-basierte Isolation (Trusted Execution)
  - Namespaces und Cgroups (bei containerbasierten Ansätzen)

#### Erweiterte Funktionen:
- Live Migration (vMotion bei VMware)
- High Availability (HA) Clustering
- Fault Tolerance (FT)
- Dynamic Resource Scheduling (DRS)
- Nested Virtualization

## 4. Protokolle, Produkte und Tools

### Gängige Hypervisor-Produkte:
- **Typ-1**: VMware ESXi, Microsoft Hyper-V, Citrix XenServer, KVM (Kernel-based Virtual Machine).
- **Typ-2**: Oracle VirtualBox, VMware Workstation/Fusion, Parallels Desktop.

### Verwaltungstools:
- **vCenter Server** (VMware)
- **Proxmox VE** (Open-Source)
- **OpenStack** (für Cloud-basierte VM-Orchestrierung)

### Netzwerkprotokolle:
- **Virtio**: Standard für virtuelle Geräte (Netzwerk, Festplatten).
- **SPICE/RemoteFX**: Protokolle für Remote-Zugriff auf VMs.

## 5. Architektur (Beispiel)

```
+---------------------------------------------------+
|               Gast-Betriebssystem                 |
|                (VM 1, VM 2, ...)                  |
+---------------------------------------------------+
|            Hypervisor (Typ-1 oder Typ-2)          |
+---------------------------------------------------+
|               Physische Hardware                  |
|       (CPU, RAM, Storage, Netzwerk, etc.)         |
+---------------------------------------------------+
```
