# Virtual Machines (VMs)

## 1. Was ist eine virtuelle Maschine?

Eine virtuelle Maschine (VM) ist ein vollständig in Software nachgebildeter Computer, der innerhalb eines physischen Rechners betrieben wird. Diese virtuelle Maschine bildet die Architektur und Funktionen eines realen Rechnersystems nach und läuft als isoliertes Gast-System auf einem physischen Rechner, auch als Host bezeichnet. Dagegen bezeichnet man die virtuelle Instanz als Guest. Ein einzelner Host kann in der Regel mehrere VMs gleichzeitig ausführen, wobei diese voneinander strikt isoliert sind.

Für User und Programme verhält sich eine VM nahezu wie ein echter, eigenständiger Rechner. So ist es beispielsweise möglich, eine Linux-Distribution als VM auf einem MacOS- oder Windows-Rechner laufen zu lassen. Aus Sicht des Gast-Betriebssystems unterscheidet sich die Ausführung in der VM kaum von der auf realer Hardware, das virtuelle System hat sein eigenes Betriebssystem und eigene Anwendungen, die nahezu so performant und nahtlos laufen wie auf einer physischen Maschine.

## 2. Einsatzbereiche virtueller Maschinen

- **Cloud Computing:** Moderne Cloud-Infrastrukturen basieren auf Virtualisierung, sie ermöglichen es, flexible virtuelle Server auf gemeinsamer Hardware bereitzustellen. Erstaunlicherweise ist Virtualisierung eine der Kerntechnologien, die Cloud-Computing überhaupt ermöglichen.

- **Server-Virtualisierung:** In Rechenzentren können durch Virtualisierung viele Server auf einem leistungsfähigen physischen Host integriert werden, anstatt für jeden Dienst separate Hardware vorzuhalten. Eine einzelne große Hardware-Plattform kann meist wirtschaftlicher betrieben werden als viele kleine Einzelserver mit gleicher Gesamtleistung. Das spart nicht nur Kosten, sondern vereinfacht auch die Verwaltung und Skalierung.

- **Softwareentwicklung und Tests:** Entwickler und Tester nutzen VMs, um isolierte Umgebungen für Experimente, Software-Tests oder Schulungen bereitzustellen. Verschiedene Betriebssysteme oder Software-Versionen können parallel auf demselben Host ausprobiert werden, ohne das Hauptsystem zu beeinträchtigen. Bei Fehlerfall lässt sich eine VM schnell zurücksetzen, was einen sicheren Testbereich für Tests und neue Software bietet.

- **Desktop-Virtualisierung:** Auch Endanwender können VMs einsetzen, um mehrere Betriebssysteme gleichzeitig auf einem PC auszuführen. Unternehmen nutzen dieses Prinzip in Virtual Desktop Infrastructure (VDI)-Lösungen, bei denen Benutzer ihre Arbeitsumgebung als VM auf einem Server ausführen und per Netzwerk darauf zugreifen. So können etwa auf einem physischen Server dutzende virtuelle Desktop-Maschinen für Mitarbeiter betrieben werden, was Verwaltung und Backup zentralisiert.

- **Sicherheit und Sandboxing:** Virtuelle Maschinen dienen auch oft als sichere isolierte Umgebung. Beispielsweise kann man verdächtige Software oder Malware isoliert in einer VM ausführen, ohne dass das Host-System gefährdet wird. Im Falle einer Infektion wird einfach die VM gelöscht oder auf einen früheren Snapshot zurückgesetzt, ohne dabei den physischen Rechner damit zu stören. Diese Isolation wird auch zur Sicherheitsforschung und beim Testen von Betriebssystem-Updates genutzt.

**Vorteile:**

- Verbesserte Ressourcennutzung  
- Einfache Sicherung & Wiederherstellung  
- Skalierbarkeit & Flexibilität

## 3. Technische Funktionsweise einer VM

Virtuelle Maschinen laufen nicht direkt auf der physischen Hardware. Stattdessen wird zwischen VM und Hardware eine Software-Schicht eingesetzt (der Hypervisor), auch Virtual Machine Monitor (VMM) genannt. Der Hypervisor verwaltet die Ressourcen des Host-Systems (z. B. CPU, RAM, Festplatten, Netzwerke) und stellt sie den VMs abstrahiert zur Verfügung. Er sorgt dafür, dass mehrere Gast-Systeme nebeneinander isoliert auf einem Host betrieben werden können, kontrolliert und ohne gegenseitige Beeinflussung.

Jede VM bekommt eine vollständig virtuelle Hardwareumgebung zugewiesen.  
Diese umfasst:

- Virtuelle CPU(s)  
- Virtueller Arbeitsspeicher  
- Virtuelle Netzwerkschnittstellen  
- Virtuelle Festplatten

Das Gast-Betriebssystem erkennt dabei nicht, dass es auf virtueller statt realer Hardware läuft. Es glaubt, auf einem echten Rechner zu arbeiten.

### Ressourcenzuweisung und Transparenz

Intern teilt der Hypervisor die physischen Ressourcen in logisch getrennte Einheiten auf. Er weist jeder VM bestimmte Anteile dieser Ressourcen exklusiv zu. Die Umsetzung erfolgt so, dass jede VM denkt, sie hätte eigene Hardware. In Wahrheit greifen alle VMs auf denselben physischen Prozessor, RAM und I/O-Systeme zu, nur kontrolliert und getrennt.

### Speicherung und Portabilität

Virtuelle Maschinen werden in der Regel als Dateien auf dem Host gespeichert.  
Dazu zählen:

- Das VM-Image (virtuelle Festplatte)  
- Snapshots  
- Konfigurationsdateien

## 4. Aufgaben und Arten von Hypervisoren

### 4.1 Aufgaben

Der Hypervisor übernimmt zentrale Aufgaben:

- Zuteilung von Ressourcen (RAM, CPU-Zeit, Netzwerkbandbreite etc.)  
- Überwachung der VM-Zugriffe auf Hardware  
- Zeitliche Koordination der CPU-Zugriffe (Scheduling)  
- Isolation der einzelnen VMs untereinander

### 4.2 Arten von Hypervisoren

Es gibt zwei Hauptarten von Hypervisoren:

- **Typ-1: Bare Metal**  
  - Läuft direkt auf der Hardware, ohne darunterliegendes Betriebssystem  
  - Wird meist in Servern und Rechenzentren eingesetzt  
  - Beispiele: VMware ESXi, Microsoft Hyper-V, KVM (unter Linux)

- **Typ-2: Hosted**  
  - Läuft als normale Anwendung auf einem bestehenden Betriebssystem  
  - Geeignet für Desktop-PCs oder Testumgebungen  
  - Beispiele: Oracle VirtualBox, VMware Workstation

## 5. Gängige Hypervisoren und Virtualisierungstools

### 5.1 Hypervisoren

Es gibt eine große Anzahl an Virtualisierungsprodukten, sowohl kommerzielle- als auch Open-Source-Software.  
Zu den bekanntesten gehören:

- **VMware vSphere/ESXi:**  
  Das Produkt vSphere mit dem Hypervisor ESXi ist ein verbreiteter Typ-1-Hypervisor für Servervirtualisierung in Unternehmen. VMware bietet zudem Verwaltungswerkzeuge und Zusatzfunktionen (vCenter, vMotion für Live-Migration, usw.) und ist in vielen Rechenzentren der Standard.

- **Microsoft Hyper-V:**  
  Ein Type-1-Hypervisor von Microsoft, der in Windows Server und auch in einigen Windows Desktop Editionen integriert ist. Hyper-V wird häufig in Windows-basierten Serverumgebungen sowie in Microsofts Azure-Cloud genutzt.

- **KVM (Kernel-based Virtual Machine):**  
  KVM ist ein Open-Source-Hypervisor vom Typ 1. KVM bildet die Basis vieler Linux-basierter Virtualisierungsplattformen (z.B. OpenStack, Proxmox) und ermöglicht unter Linux die effiziente Erstellung von VMs mit Hilfe von Emulationssoftware.

- **Xen:**  
  Ein weiterer Open-Source-Bare-Metal-Hypervisor, der durch die Uni Cambridge entwickelt wurde. Xen kommt z.B. in der Lösung Citrix Hypervisor zum Einsatz. Xen trennt VMs über ein eigenes Domänen-Modell und war einer der ersten weit verbreiteten Virtualisierer.

- **Oracle VirtualBox & VMware Workstation:**  
  Beides sind zwei beliebte und bekannte Desktop-Virtualisierungstools (Typ-2-Hypervisoren) für Einzelrechner. VirtualBox ist eine freie Software von Oracle, mit der sich VMs auf Windows, Linux oder Mac betreiben lassen. VMware Workstation dagegen ist ein kommerzielles Produkt mit ähnlichem Zweck. Beide ermöglichen es, mehrere Gastsysteme auf einem gewöhnlichen PC parallel laufen zu lassen.
### 5.2 Tools

- **vCenter (VMware):**  
  Ist eine Management-Software, mit der man mehrere ESXi-Hosts und deren virtuelle Maschinen verwalten kann.

- **Virt-Manager (für KVM):**  
  Ist eine Desktop-Applikation mit der VMs auf Linux Hosts erstellt, gestartet, gestoppt und verwaltet werden können.



## 6. Architektur

![Architektur virtuelle Maschinen](https://www.ionos.at/digitalguide/fileadmin/_processed_/8/1/csm_DE-virtuelle-maschine_fe29ce719a.webp)


## 7. Quellen

https://de.wikipedia.org/wiki/Virtuelle_Maschine  
https://www.redhat.com/de/topics/virtualization/what-is-a-virtual-machine  
https://www.ionos.de/digitalguide/server/knowhow/was-ist-ein-hypervisor  
https://www.redhat.com/de/topics/virtualization/what-is-a-hypervisor  
https://www.vmware.com/products/cloud-infrastructure/vcenter  
https://virt-manager.org  
https://www.thomas-krenn.com/de/wiki/Virtual_Machine_Manager_-_GUI_zur_Verwaltung_virtueller_Maschinen  
https://de.wikipedia.org/wiki/VirtualBox  
https://de.wikipedia.org/wiki/VMware_Workstation  
Grafik:  
<https://www.ionos.at/digitalguide/fileadmin/_processed_/8/1/csm_DE-virtuelle-maschine_fe29ce719a.webp>  
