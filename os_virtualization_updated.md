
# OS Virtualization

Die Betriebssystemvirtualisierung (engl. OS Virtualization) ist ein Konzept der Informatik, das es erlaubt, mehrere voneinander isolierte Betriebssystemumgebungen – sogenannte Container – auf einem einzigen physischen System auszuführen. Dabei wird nur ein gemeinsamer Kernel verwendet, der die zugrunde liegende Hardware sowie Systemressourcen verwaltet. Jeder Container enthält in der Regel nur eine einzelne Anwendung (one app per container), was eine klare Trennung und Portabilität der Softwarekomponenten ermöglicht.

Diese Form der Virtualisierung ist besonders ressourcenschonend, da im Gegensatz zu klassischen virtuellen Maschinen kein vollständiges Gastsystem benötigt wird. Stattdessen teilen sich alle Container den Kernel des Host-Betriebssystems.

## Kontext und Einsatzgebiete

OS Virtualization ist aus modernen IT-Infrastrukturen nicht mehr wegzudenken. In Cloud-Umgebungen, Continuous Integration Pipelines oder bei der Microservice-Architektur werden Anwendungen in separaten Containern betrieben. Dadurch wird nicht nur die Ressourcenauslastung optimiert, sondern auch die Entwicklung, Wartung und Skalierung vereinfacht.

Wichtig: Container können sowohl direkt auf physischer Hardware als auch innerhalb einer virtuellen Maschine betrieben werden – *OS Virtualization can run on VM or Hardware*. Dies bietet zusätzliche Flexibilität im Deployment.

## Technische Funktionsweise

Ein Container besteht technisch gesehen aus:
- der Anwendung (z. B. ein Webserver),
- allen nötigen Laufzeitbibliotheken,
- und einer Containerbeschreibung (Image).

Alle Container laufen auf einem einzigen Kernel des Hosts – man spricht daher von einem *shared kernel*. Die Isolierung erfolgt über:
- **Namespaces**: trennen Prozessräume, Netzwerkstacks, Benutzer und Dateisysteme.
- **Control Groups (cgroups)**: begrenzen Ressourcen wie CPU, RAM, I/O.
- **Union Filesystems** (z. B. OverlayFS): erlauben das effiziente Erstellen von Container-Images durch Schichtenprinzip.

Damit Container überhaupt gestartet und verwaltet werden können, benötigt man zusätzlich eine **Container Engine** (wie Docker oder Podman), die für das Bauen, Starten, Stoppen und Verteilen zuständig ist.

## Tools und Produkte

| Tool / Produkt | Beschreibung |
|----------------|--------------|
| **Docker** | Standardtool für das Containerisieren von Anwendungen. |
| **Podman** | Alternative zu Docker – ohne zentralen Daemon. |
| **LXC** | Low-Level-Containerlösung nahe am Kernel. |
| **Kubernetes** | Orchestrierungslösung für das Managen vieler Container auf vielen Hosts. |
| **OpenVZ** | Containerlösung für Linux-Hosts mit eigenem Kernelmodul. |

## Vergleich: Machine Virtualization vs. OS Virtualization

![Machine vs OS Virtualization](os_vs_machine_virtualization.jpeg)

Die Grafik veranschaulicht den Unterschied zwischen zwei Virtualisierungsansätzen:

- **Links**: Klassische Maschinenvirtualisierung mit Hypervisor (z. B. VMware, Hyper-V). Jede Anwendung läuft in einer eigenen virtuellen Maschine mit komplettem Gastsystem. Diese Architektur erzeugt höheren Ressourcenverbrauch.
- **Rechts**: OS Virtualization (z. B. mit Docker). Hier werden die Container vom gleichen Betriebssystemkern verwaltet. Jeder Container enthält nur die Anwendung und ihre Laufzeitbibliotheken, aber kein eigenes Betriebssystem.

**Fazit:** OS Virtualization ist deutlich schlanker, schneller startbereit und ressourcenschonender – ideal für Cloud-native Anwendungen.

## Fazit

OS Virtualization ist eine leichtgewichtige und performante Technologie, die eine effiziente Nutzung von Ressourcen erlaubt. Durch Containerisierung können Anwendungen schnell und isoliert betrieben werden – ideal für dynamische, verteilte Systeme wie Microservices oder moderne Cloud-Umgebungen.

Der Schlüssel zur Effizienz: *Ein Betriebssystem, mehrere Container – mit gemeinsamem Kernel.*  
Die Trennung erfolgt logisch, nicht physisch – ermöglicht durch Namespaces und cgroups.
