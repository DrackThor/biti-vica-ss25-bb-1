# Network Attached Storage (NAS)

## Begriffserklärung

Network Attached Storage (NAS) bedeutet übersetzt „netzgebundener Speicher“. Es handelt sich um ein Speichersystem, das über ein Netzwerk erreichbar ist und als zentraler Ablageort für Daten dient. Im Gegensatz zu lokal angeschlossenen Festplatten (Direct Attached Storage, DAS) wird der Speicherplatz über das Netzwerk bereitgestellt, sodass mehrere Benutzer oder Geräte gleichzeitig darauf zugreifen können.

NAS-Systeme bestehen in der Regel aus mehreren Festplatten, einem eigenen Betriebssystem und einem Netzwerkanschluss. Sie bieten nicht nur Speicherplatz, sondern auch Verwaltungs- und Sicherheitsfunktionen. Der Zugriff erfolgt typischerweise über gängige Dateifreigabeprotokolle.

---

## Einsatzgebiete

NAS-Systeme finden Anwendung in verschiedenen Bereichen:

- **Privathaushalte:** Zentraler Speicher für Fotos, Videos, Musik, Dokumente; Einsatz als Medienserver (z. B. DLNA, Plex).
- **Kleine und mittlere Unternehmen:** Gemeinsame Dateiverwaltung, Datensicherung, Backup-Lösungen, Versionsverwaltung.
- **Große Unternehmen:** Teil komplexer Speicherlandschaften, kostengünstige Alternative zu Storage Area Networks (SAN).

NAS wird oft mit anderen Speicherarchitekturen verglichen:
- **DAS (Direct Attached Storage):** Direkt angeschlossen an einen Computer, ohne Netzwerkzugriff.
- **SAN (Storage Area Network):** Spezialisierte, blockbasierte Speicherlösung, häufig in Rechenzentren.

---

## Technische Funktionsweise

Ein NAS arbeitet als spezialisierter Dateiserver im Netzwerk. Die grundlegenden Komponenten sind:

- **Festplattenlaufwerke:** Mehrere HDDs oder SSDs, oft im RAID-Verbund für Redundanz und Ausfallsicherheit.
- **RAID-Controller:** Verwaltet die Festplatten und sorgt für Datensicherheit.
- **Netzwerkschnittstelle:** Meist Ethernet, in modernen Geräten Gigabit oder schneller.
- **Betriebssystem:** Speziell angepasstes OS, z. B. Synology DSM oder QNAP QTS.

Funktionsablauf:
1. **Speicherbereitstellung:** Festplatten werden zu logischen Volumes zusammengefasst.
2. **Netzwerkfreigabe:** Bereitstellung von Verzeichnissen über Dateifreigabeprotokolle.
3. **Benutzer- und Rechteverwaltung:** Zugriffskontrolle für verschiedene Nutzergruppen.

---

## Gängige Protokolle, Produkte und Tools

### Protokolle

- **SMB (Server Message Block):** Standard für Windows-Freigaben.
- **NFS (Network File System):** Weit verbreitet unter Linux und UNIX.
- **AFP (Apple Filing Protocol):** Historisch bei Apple, inzwischen weitgehend durch SMB ersetzt.
- **FTP/SFTP:** Dateitransferprotokolle.
- **DLNA/UPnP:** Für Medienstreaming.

### Bekannte NAS-Produkte und Hersteller

- **Synology** (DSM)
- **QNAP** (QTS)
- **Western Digital My Cloud**
- **TrueNAS** (Open-Source)
- **Asustor**, **TerraMaster**

### Typische Features

- RAID-Management und -Konfigurationen
- Backup- und Snapshot-Funktionalität
- Virtualisierung (Container, VMs)
- Cloud-Integration (z. B. Synchronisation mit Google Drive, Dropbox)
- Webinterface und mobile Apps für Verwaltung und Remotezugriff

---

# Architektur eines NAS-Systems

##  Hardware-Ebene

- **CPU**: Verwendet werden oft energieeffiziente ARM- oder leistungsfähigere Intel-/AMD-Prozessoren, abhängig von den Anforderungen.
- **RAM**: Arbeitsspeicher für das Betriebssystem, Dateidienste und zusätzliche Anwendungen.
- **Festplatten**: Mehrere HDDs oder SSDs, meist in RAID-Konfiguration für Redundanz, Performance und Ausfallsicherheit.


---

##  Betriebssystem- und Software-Ebene

- **NAS-Betriebssystem**: Bei Synology z. B. DSM (DiskStation Manager), ein spezialisiertes Linux-basiertes OS.
- **Storage-Management**: Verwaltung der Festplatten, Erstellung von Volumes, RAID-Konfiguration, Dateisystem (z. B. ext4, Btrfs).
- **Dienstmanagement**: Bereitstellung von Netzwerkdiensten wie SMB (Windows), NFS (Linux), AFP (Apple), FTP, WebDAV.
- **Benutzer- und Rechteverwaltung**: Verwaltung von Zugriffsrechten, Benutzerkonten, Gruppen und Sicherheitsrichtlinien.
- **Anwendungsdienste**: Installation und Betrieb zusätzlicher Anwendungen wie Backup-Tools, Medienserver, Virtualisierung (Docker, VMs) oder Überwachungssysteme.

---

##  Netzwerk- und Protokoll-Ebene

- **Dateifreigabeprotokolle**:
  - SMB/CIFS: Für Windows-Clients.
  - NFS: Für UNIX/Linux-Clients.
  - AFP: Für ältere macOS-Umgebungen.
  - FTP, SFTP: Für Dateiübertragungen.
- **Anwendungs- und Medienprotokolle**:
  - DLNA, iTunes, Plex: Für Medienstreaming.
  - WebDAV: Für webbasierten Dateizugriff.
- **Cloud- und Synchronisationsdienste**:
  - Synology Drive, Cloud Sync, Hyper Backup.
- **Remotezugriff**:
  - QuickConnect (Synology), VPN, DDNS, HTTPS.

---

## Client-Ebene

- **Benutzerzugriffe**:
  - PCs und Laptops: Über Netzwerklaufwerke, SMB/NFS, Webbrowser oder Desktop-Clients.
  - Mobilgeräte: Über mobile Apps (z. B. DS File, DS Photo, DS Video bei Synology).
  - Andere Endgeräte: Smart-TVs, Mediaplayer, Überwachungskameras.
- **Verwaltung**:
  - Webinterface: Zugriff über Browser für Konfiguration und Monitoring.
  - Mobile Apps: Verwaltung und Monitoring von unterwegs.

---



