# OS Virtualization

## 1. Was ist OS Virtualization?

**OS Virtualization** (Operating System Virtualization), auch bekannt als Containerisierung, ist eine Form der Virtualisierung, bei der mehrere isolierte Benutzerinstanzen oder Anwendungen gleichzeitig auf einem einzigen physischen Betriebssystem (Host OS) betrieben werden. Anstatt für jede Anwendung eine eigene virtuelle Maschine (VM) mit eigenem Betriebssystem zu starten, wird bei der OS-Virtualisierung derselbe Kernel gemeinsam genutzt.

Im Gegensatz zur Hardwarevirtualisierung, bei der ein Hypervisor (z. B. VMware ESXi oder Microsoft Hyper-V) den Zugriff auf die zugrunde liegende Hardware abstrahiert, kapselt OS Virtualization lediglich die Betriebssystemumgebung.

## 2. Historischer Kontext und Motivation

Die Wurzeln der OS Virtualization reichen bis zu den Unix `chroot`-Kommandos aus den 1980er Jahren zurück. Moderne Implementierungen entwickelten sich weiter mit:

- **FreeBSD Jails (2000)** – isolierte Benutzerumgebungen auf Kernel-Ebene
- **Solaris Zones (2004)** – vollständige Container mit Ressourcenkontrolle
- **LXC (2008)** – Linux Container unter Verwendung von Kernel-Funktionalitäten
- **Docker (2013)** – Popularisierung der Containerisierung im DevOps-Umfeld

Die Popularität wuchs durch Anforderungen wie:
- Schnellere Bereitstellung von Anwendungen
- Portabilität zwischen Umgebungen (Dev → Prod)
- Höhere Dichte an Applikationen auf Servern (Effizienzsteigerung)

## 3. Technische Funktionsweise

### 3.1. Wichtige Kernel-Features

Die Grundlage von OS Virtualization unter Linux besteht aus zwei zentralen Mechanismen:

- **Namespaces** – sorgen für Isolation:
  - `pid`: isoliert Prozess-IDs
  - `net`: isoliert Netzwerkinterfaces und Routing
  - `mnt`: isoliert Dateisysteme
  - `ipc`: isoliert Inter-Prozess-Kommunikation
  - `uts`: isoliert Hostnamen
  - `user`: isoliert Benutzer- und Gruppen-IDs
- **Control Groups (cgroups)** – steuern Ressourcen:
  - CPU-Limits
  - Speicherbeschränkungen
  - Netzwerk-I/O
  - Block-I/O

### 3.2. Container-Image & OverlayFS

Container nutzen **read-only** Images, die beim Start mit einem **writable Layer** (Copy-on-Write) ergänzt werden. Dadurch sind Container schnell und effizient im Speicherverbrauch.

Beispiel Layer-Aufbau bei einem Container:
```
- Base Image (z. B. Ubuntu)
- Language Runtime (z. B. Python)
- Application Code
- Writable Layer (nur Änderungen)
```

## 4. Gängige Protokolle, Tools und Plattformen

### 4.1. Laufzeitumgebungen (Container Runtimes)

| Tool / Komponente | Funktion | Bemerkung |
|------------------|----------|-----------|
| `runc`           | Low-level Container-Laufzeit | OCI-konform |
| `containerd`     | High-level Runtime, von Docker getrennt | Wird direkt von Kubernetes verwendet |
| `CRI-O`          | Kubernetes-native Runtime | Entwickelt von Red Hat |
| `LXC` / `LXD`    | Systemcontainer mit höherer Nähe zu klassischen VMs | Ermöglicht vollständige OS-Container |

### 4.2. Tools zur Erstellung und Verwaltung

| Tool | Beschreibung |
|------|--------------|
| **Docker** | CLI und Engine zur Containerverwaltung |
| **Podman** | Alternative zu Docker, ohne Daemon, rootless |
| **Buildah** | Image-Erstellung ohne Daemon |
| **Kubernetes** | Orchestrierungsplattform für große Container-Cluster |
| **Docker Compose** | Multi-Container-Definitionen in YAML |

## 5. Sicherheit bei OS Virtualization

Container teilen sich denselben Kernel, was zu **geringerer Isolation** als bei VMs führen kann.

### Sicherheitsmechanismen:

- **AppArmor / SELinux**: Mandatory Access Control
- **seccomp**: System-Call-Filtering zur Einschränkung der Container-Rechte
- **rootless Container**: Keine Root-Rechte im Host durch User-Namespace
- **Image Scanning**: Tools wie `Trivy` oder `Clair` prüfen Images auf Schwachstellen

Trotzdem gilt: Container sind keine Sicherheitsgrenze im traditionellen Sinne (z. B. im Vergleich zu VMs).

## 6. Architekturdiagramm (vereinfacht)

```
+----------------------------------------------------+
|                  Host Betriebssystem               |
|  +--------------------------------------------+    |
|  | Container Engine (Docker / Podman / LXD)   |    |
|  +------------+------------+------------+-----+    |
|        |               |               |           |
|   +----+----+     +----+----+     +----+----+      |
|  | Container |   | Container |   | Container |     |
|  |   App 1   |   |   App 2   |   |   App 3   |     |
|   +---------+     +---------+     +---------+      |
|        (gemeinsam genutzter Linux-Kernel)          |
+----------------------------------------------------+

```

## 7. Vorteile und Nachteile

### Vorteile:

- **Performance**: Container starten in Sekunden
- **Effizienz**: Geringer Overhead, da kein vollständiges OS benötigt wird
- **Portabilität**: „Write once, run anywhere“ dank Image-basiertem Ansatz
- **Skalierbarkeit**: Automatisiert über Kubernetes & Co.

### Nachteile:

- **Geringere Isolation**: Sicherheitsrisiken durch Kernel-Sharing
- **Komplexität**: Netzwerk-Setup, Volumes, Persistenz erfordern Know-how
- **Debugging**: Fehler im Container können schwer nachvollziehbar sein

## 8. Relevante Standards

- **OCI (Open Container Initiative)**:
  - `runtime-spec`: Spezifiziert wie Container starten und laufen (z. B. `runc`)
  - `image-spec`: Wie Container-Images aufgebaut sind

- **CNCF Landscape**: Viele Tools rund um Containerisierung und Orchestrierung sind von der [Cloud Native Computing Foundation](https://landscape.cncf.io/) verwaltet (u. a. Kubernetes, Prometheus, etcd)

## 9. Fazit

OS Virtualization ist eine Schlüsseltechnologie moderner IT-Infrastrukturen. Sie ersetzt in vielen Szenarien klassische virtuelle Maschinen und ermöglicht effizientere Bereitstellung, Ausführung und Verwaltung von Anwendungen. In Kombination mit Orchestrierungsplattformen wie Kubernetes ergeben sich völlig neue Möglichkeiten für skalierbare, agile und hochverfügbare IT-Lösungen.

## 10. Quellen

- https://docs.docker.com/
- https://linuxcontainers.org/
- https://kubernetes.io/
- https://opencontainers.org/
- https://podman.io/
- https://www.redhat.com/en/topics/containers/what-is-cri-o
- https://man7.org/linux/man-pages/
