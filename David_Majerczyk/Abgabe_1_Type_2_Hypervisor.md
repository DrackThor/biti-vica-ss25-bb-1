David Majerczyk
BITI SS2025-VICA


Type-2-Hypervisor

Worum handelt es sich bei dem Begriff?
Ein Type-2-Hypervisor (auch „Hosted Hypervisor“) ist eine Virtualisierungssoftware, die 
auf einem bestehenden Betriebssystem läuft. Sie ermöglicht das Erstellen und 
Ausführen virtueller Maschinen (VMs), die wie eigenständige Computer mit eigenem 
Betriebssystem funktionieren

In welchem Kontext wird der Begriff verwendet?
Type-2-Hypervisoren werden vor allem in folgenden Szenarien genutzt:
• Softwaretests und Entwicklung
• IT-Schulungen
• Sicheres Testen potenziell schädlicher Software
• Privatnutzer, die andere Betriebssysteme ausprobieren möchten

Technische Funktionsweise
Der Hypervisor wird wie ein normales Programm auf dem Host-Betriebssystem 
installiert. Die virtuellen Maschinen greifen dann über den Hypervisor auf die physische 
Hardware zu.
Da der Hypervisor nicht direkt auf der Hardware, sondern auf einem Betriebssystem 
läuft, ist die Leistung etwas geringer als bei Type-1-Hypervisoren.
„Type-2 Hypervisors run on top of an existing operating system and are ideal for 
less intensive applications, such as testing or development, where resource 
constraints are less critical.” [4]

Bekannte Tools
• VirtualBox (Windows, macOS, Linux) – Open Source
• VMware Workstation / Fusion (Windows, macOS) – kommerziell
• Parallels Desktop (macOS) – kommerziell

Technologien
• VT-x / AMD-V: CPU-Unterstützung für Virtualisierung
• VHD, VDI, VMDK: Formate für virtuelle Festplatten
• OVF / OVA: Standardformate zum Austausch von VMs

Darstellung der Architektur (Vergleich zu Type 1 Hypervisor)
[4]ANHANG

Quellen
Redhat: https://www.redhat.com/en/topics/virtualization/what-is-a-hypervisor

VirtualBox: https://www.virtualbox.org/manual/UserManual.html

Phoenixnap: https://phoenixnap.com/kb/what-is-hypervisor-type-1-2

[4] Scale Computing – Unlocking the Power of Virtual Machine Architecture: 
https://www.scalecomputing.com/resources/unlocking-the-power-of-virtual-machinearchitecture
