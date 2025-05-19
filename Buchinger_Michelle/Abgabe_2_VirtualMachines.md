# Abgabe 2 – Virtual Machines

Virtuelle Maschinen (VMs) sind softwarebasierte Nachbildungen physischer Computer, die innerhalb eines Hosts (also auf echter Hardware) betrieben werden. 
Sie ermöglichen die parallele Ausführung mehrerer Betriebssysteme und Anwendungen auf einem einzigen physischen Gerät.
Eine VM verhält sich wie ein echter Computer/Server allerdings vollständig virtualisiert durch eine Software-Schicht namens Hypervisor.
Die vollständige simulierte Hardware, welche vom Hypervisor bereitgestellt wird, kann indiviudell konfiguriert werden:
*) Virtuelle Festplatte: Wird als Datei gespeichert (zum Beispiel VDI, VMDK, VHD). Dient als System- und Datenträger der VM.
*) Virtuelle CPU (vCPU): Der Hypervisor weist einer VM eine oder mehrere CPU-Kerne zu.
*) Virtueller Arbeitsspeicher (RAM): Fester oder dynamischer Speicher, den die VM nutzen darf.
*) Virtueller Netzwerkadapter (vNIC): Bindet die VM an virtuelle Switches, VLANs oder Bridge-Adapter.
*) Virtuelle Grafikkarte (GPU): Unterstützt 2D/3D-Darstellung, ggf. mit GPU-Passthrough für bessere Leistung.
*) Virtuelle Soundkarte / USB: Simuliert Peripherie wie Audio, USB-Geräte, Druckeranschlüsse usw.


Der Hypervisor ist die zentrale Komponente, die VMs verwaltet und zwischen ihnen und der physischen Hardware vermittelt. Er stellt Ressourcen wie CPU, RAM und Speicher bereit.
Typ 1 („Bare-Metal“): Läuft direkt auf der Hardware, ohne darunterliegendes Betriebssystem. 
Zum Beispiel VMware ESXi, Microsoft Hyper-V,..
Typ 2("Hosted"): Läuft hinnerhalb eines bestehenden Betriebsystems
Zum Beispiel, VirtualBox,..

Typische Einsatzbereiche von virtuelle Maschinen sind:
*) Server-Konsolidierung: Mehrere Dienste (zum Beispiel Web-, Datenbank-, Applikationsserver) laufen in separaten VMs auf einem leistungsstarken Host.  Dadurch werden Hardwarekosten, Energieverbrauch und Wartungsaufwand reduziert.
*) Ausfallsicherheit & Hochverfügbarkeit: Mithilfe von Hypervisor-Funktionen wie Live Migration (zum Beispiel vMotion bei VMware) können VMs im Fehlerfall automatisch auf andere Hosts verschoben werden. 
*) Netzwerkvirtualisierung & Isolierung: VMs können über virtuelle Switches und VLANs logisch voneinander getrennt oder verbunden werden.Komplexe Netzwerke mit Firewalls und Load Balancern lassen sich vollständig virtualisieren.
*) Skalierbarkeit in Rechenzentren: Neue VMs können innerhalb weniger Minuten bereitgestellt werden, beispielsweise zur Lastverteilung oder für zeitlich begrenzte Projekte. In Cloud-Umgebungen (zum Beispiel Microsoft Azure, AWS, Google Cloud) ist das Standard (IaaS).
*) Snapshots und Rollbacks: VMs lassen sich mit wenigen Klicks sichern und in vorherige Zustände zurückversetzen. Das ist hilfreich für Wartung, Updates und Tests.
*) Zentrale Verwaltung: Tools wie VMware vCenter ermöglichen die zentrale Steuerung, Überwachung und Automatisierung ganzer Virtualisierungsumgebungen.
*) Softwareentwicklung & Testing: Verschiedene Betriebssysteme (zum Beispiel Windows 10 & 11) parallel testen.
*) Legacy-Softwarebetrieb: Alte Anwendungen auf neuen Systemen weiterhin nutzen.
*) IT-Sicherheit: Malwareanalyse in isolierten Umgebungen.
*) Schulungen & Ausbildung: Schnelle Bereitstellung vollständiger Testumgebungen.
    
Gängige Protokolle, welche damit verwendet werden:
*) Fernzugriff: RDP (Remote Desktop) für Windwos VMs
*) Terminalzugriff: SSH
*) Netzwerkspeicher: iSCSI, NFS, SMB


Quellen:
https://azure.microsoft.com/de-de/resources/cloud-computing-dictionary/what-is-a-virtual-machine
https://www.vmware.com/topics/virtual-machine
Bilder: https://www.fs.com/de/blog/was-ist-virtualisierung-von-rechenzentren-16997.html
https://www.veeam.com/blog/why-virtual-machine-backups-different.html 
