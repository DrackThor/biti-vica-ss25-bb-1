
# History of Virtualization

## 1. Worum handelt es sich bei Virtualisierung?

**Virtualisierung** bezeichnet das Konzept, physische Ressourcen (Hardware) so zu abstrahieren, dass mehrere virtuelle Instanzen unabhängig voneinander darauf laufen können. Diese „virtuellen Maschinen“ (VMs) verhalten sich wie eigenständige Computer – mit eigenem Betriebssystem und eigener Softwareumgebung – obwohl sie sich die zugrunde liegende Hardware teilen.

**Ziel:** Effizientere Ressourcennutzung, bessere Skalierbarkeit, Isolation von Anwendungen/Betriebssystemen und erleichterte Verwaltung komplexer IT-Infrastrukturen.

---

## 2. Historischer Kontext: Wie entstand Virtualisierung?

Die Idee der Virtualisierung ist **über 50 Jahre alt**. Sie entstand aus dem Bedürfnis, Großrechner (Mainframes) effizienter zu nutzen:

| Jahr     | Meilenstein                                                                 |
|----------|-----------------------------------------------------------------------------|
| 1960er   | IBM entwickelt erste Virtualisierungskonzepte auf dem IBM System/360.       |
|          | Projekt CP-40 → CP/CMS: erster funktionaler Hypervisor.                    |
| 1970er   | IBM VM/370: Mehrere Betriebssysteme laufen gleichzeitig auf einem System.  |
| 1980er–90er | Rückgang: Günstige PCs machen dedizierte Systeme attraktiv.             |
| 2000er   | VMware ermöglicht Virtualisierung auf x86-Hardware.                        |
| 2010er+  | Cloud Computing, Containerisierung (Docker, Kubernetes), hybride IT.       |

---

## 3. Technische Funktionsweise

Virtualisierung funktioniert durch eine **Abstraktionsschicht** zwischen Hardware und Betriebssystem – den sogenannten **Hypervisor**.

### Typen von Hypervisoren

| Typ           | Beschreibung                               | Beispiel                        |
|---------------|--------------------------------------------|---------------------------------|
| Typ 1 (Bare Metal) | Läuft direkt auf der Hardware             | VMware ESXi, Microsoft Hyper-V |
| Typ 2 (Hosted)     | Läuft auf einem Host-Betriebssystem      | VirtualBox, VMware Workstation |

### Vereinfachte Funktionsweise

1. **Hypervisor startet**
2. Teilt physische Ressourcen (CPU, RAM, Netz) auf
3. Verwaltet VM-Instanzen
4. Führt VMs isoliert aus – jede mit eigenem (Gast-)Betriebssystem

---

## 4. Gängige Protokolle, Produkte und Tools

### Tools/Produkte

- **VMware**: Kommerzielle Vorreiterin der x86-Virtualisierung
- **Microsoft Hyper-V**: In Windows Server integriert
- **KVM (Kernel-based Virtual Machine)**: Native Linux-Virtualisierung
- **VirtualBox**: Open Source, für Desktop-Virtualisierung
- **QEMU**: Vollständige Emulation von Hardwareplattformen

### Technologien & Standards

- **Intel VT-x / AMD-V**: Hardwareunterstützung für Virtualisierung
- **OVF (Open Virtualization Format)**: Standard für VM-Austausch
- **Virtuelle Netzwerke**: VLANs, vSwitches
- **Storage-Virtualisierung**: Zuweisung virtueller Datenträger# History of Virtualization
---
## 5. Architektur / Visualisierung

![Hypervisor Architektur](https://www.nakivo.com/blog/wp-content/uploads/2018/10/Type-1-and-type-2-hypervisor-1024x584.webp)

---

## Fazit

Virtualisierung ist ein Kernelement moderner IT-Infrastrukturen. Ihre Entwicklung – von den Mainframes der 1960er bis zu heutigen Cloud- und Container-Lösungen – zeigt ihren wachsenden Einfluss auf Effizienz, Skalierbarkeit und Sicherheit.

Das Verständnis der historischen Entwicklung und technischen Grundlagen ist essenziell, um moderne Trends wie Containerisierung und Cloud-native Entwicklung zu begreifen.

---

## 6. Quellen

- https://www.vm.ibm.com/history/
- https://www.ibm.com/think/topics/virtualization
- https://www.redhat.com/en/topics/virtualization/what-is-a-hypervisor
- https://en.wikipedia.org/wiki/Virtualization
- https://en.wikipedia.org/wiki/Hypervisor
