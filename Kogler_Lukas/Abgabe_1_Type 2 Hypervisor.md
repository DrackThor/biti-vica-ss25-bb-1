
<u>**# Type 2 Hypervisor – Virtualisierung auf dem Desktop**</u>

## Einleitung

Virtualisierung ist inzwischen fast überall in der IT zu finden – egal ob im Rechenzentrum, bei der Entwicklung von Software oder auch einfach zu Hause auf dem Laptop. Eine zentrale Rolle spielt dabei der sogenannte Hypervisor.
Vor allem der Type-2-Hypervisor taucht im Alltag von Entwicklerinnen, Entwicklern, Studierenden oder IT-Fachleuten immer wieder auf. Der Clou: Er läuft einfach innerhalb eines normalen Betriebssystems und kann darin virtuelle Maschinen starten, ohne dass man großartig etwas umbauen muss.
Virtuelle Maschinen gehören heute einfach dazu. In großen Rechenzentren sowieso, aber auch auf ganz normalen Arbeitsrechnern – sei es zum Testen, Entwickeln oder einfach zum Rumprobieren. Der große Vorteil: Man muss nicht jedes Mal neue Hardware anschaffen oder mehrere Geräte nutzen, wenn man mit unterschiedlichen Systemumgebungen arbeiten will.
Das Herzstück dieser Technik ist der Hypervisor – also die Software, die die virtuellen Maschinen überhaupt erst möglich macht. Besonders oft verwendet wird der sogenannte Type-2-Hypervisor. Klingt vielleicht komplizierter, als es ist: Im Grunde ist es einfach ein Programm wie jedes andere, das man unter Windows, Linux oder macOS installiert und dann ganz normal nutzt.
Der größte Vorteil dabei: Es braucht keine spezielle Hardware, keinen extra Server – nur das bestehende Betriebssystem. So lässt sich zum Beispiel unter Windows problemlos eine virtuelle Linux-Maschine starten. Ideal zum Testen, Lernen oder Entwickeln. Und wenn mal was schiefläuft? Kein Problem – das Hauptsystem bleibt unberührt.
Gerade für Studierende, die mit verschiedenen Betriebssystemen arbeiten wollen, oder für Entwicklerinnen und Entwickler, die isolierte Testumgebungen brauchen, ist das ziemlich praktisch. Auch in der IT-Ausbildung ist der Type-2-Hypervisor oft das erste Werkzeug, das man in die Hand bekommt, wenn's ums Thema Virtualisierung geht.
Natürlich ist das nicht die perfekte Lösung für alles. Weil der Hypervisor nicht direkt mit der Hardware kommuniziert, sondern „durch“ das Betriebssystem hindurch arbeitet, merkt man das bei der Leistung manchmal schon. Für viele Szenarien im Alltag reicht das aber vollkommen – und die einfache Nutzung macht ihn trotzdem sehr attraktiv.

---

## Was ist ein Type 2 Hypervisor?

Ein Type-2-Hypervisor – ist im Grunde genommen eine Software, die wie jede andere Anwendung auf einem normalen Betriebssystem läuft. Also: Man installiert ihn auf einem Rechner, auf dem bereits ein Betriebssystem wie Windows, Linux oder macOS aktiv ist. Und genau hier liegt auch der wesentliche Unterschied zum Type-1-Hypervisor, der direkt auf der Hardware läuft, ohne dass dazwischen ein Betriebssystem steht.
Beim Type-2-Modell bildet das bereits laufende System die Grundlage – der Hypervisor hängt sich sozusagen oben drauf. Er nutzt die Ressourcen, die das Host-Betriebssystem bereitstellt: Prozessorleistung, Arbeitsspeicher, Netzwerkzugriff usw. Und darauf baut er dann virtuelle Maschinen auf, die jeweils ihr eigenes Betriebssystem mitbringen können. Das Ganze läuft also verschachtelt – echte Hardware, darauf das Betriebssystem, darauf der Hypervisor, darauf wiederum ein oder mehrere „Gastsysteme“.
Das mag auf den ersten Blick etwas kompliziert wirken, ist in der Praxis aber relativ einfach. Wer zum Beispiel mal mit VirtualBox oder VMware Workstation gearbeitet hat, hat genau mit so einem Type-2-Hypervisor zu tun gehabt. Man installiert ihn wie ein ganz normales Programm und kann danach verschiedene virtuelle Maschinen anlegen – etwa für Linux-Tests unter Windows oder umgekehrt.
Technisch betrachtet passiert da unter der Haube natürlich einiges. Der Hypervisor simuliert eine komplette Hardwareumgebung: virtuelle CPU, virtuellen RAM, Netzwerkkarten, Festplattencontroller – alles, was das Gastsystem zum Laufen braucht. Und immer, wenn diese virtuelle Hardware etwas tun will, wird die Anfrage erst an den Hypervisor geleitet, der sie dann über das Host-Betriebssystem zur echten Hardware weiterreicht.
Diese Zwischenschicht – also der Umweg über das Host-OS – bringt zwar ein bisschen zusätzlichen Aufwand mit sich, aber für viele Anwendungsfälle ist das völlig okay. Besonders in der Softwareentwicklung oder bei Testszenarien ist das eine praktische Lösung, weil man schnell verschiedene Umgebungen auf einem einzigen Rechner simulieren kann, ohne gleich mehrere physische Maschinen zu brauchen.
Solche Hypervisoren sind außerdem nützlich, wenn man Betriebssysteme ausprobieren will, ohne das eigene System zu gefährden, oder wenn man bestimmte Netzwerkkonfigurationen testen möchte. Auch wer sich mit IT-Sicherheit beschäftigt, nutzt sie gerne – etwa, um Malware in einer abgeschotteten Umgebung zu analysieren, ohne dabei das eigentliche System zu gefährden.

```plaintext
[Grafik 1: Schichtenmodell eines Type 2 Hypervisors]
```
> <u>Beispiel:</u>  
> Wer auf einem Windows-Notebook Linux ausprobieren möchte, kann dazu z.B. VirtualBox installieren – ein typischer Type 2 Hypervisor.

---

## Einsatzgebiete in der Praxis

<u>1. Entwicklung & Softwaretests:</u>
- Test unterschiedlicher Betriebssysteme
- Snapshot- und Klonfunktionen
- Wechsel zwischen Testumgebungen

<u>2. IT-Ausbildung & Labore:</u>
- Virtuelle Netzwerke und Serverlandschaften
- Einsatz in Schulungen und Zertifizierungskursen

```plaintext
[Grafik 2: Beispielhafte Laborumgebung mit mehreren VMs]
```

<u>3. Sicherheit & Forensik:</u>
- Malware-Analyse in abgeschotteter Umgebung
- Rollback durch Snapshots

<u>4. Legacy-Software:</u>
- Alte Programme unter veralteten Betriebssystemen
- Beispiel: Buchhaltungstools für Windows XP

---

## Technischer Überblick
Ein Type 2 Hypervisor läuft wie ein normales Programm auf dem Host-Betriebssystem. Er nutzt also alles, was das System schon mitbringt – CPU, RAM, Festplatte, Netzwerk – über die bestehenden Schnittstellen.
Kernstück ist der Virtual Machine Monitor (VMM), der virtuelle Hardware bereitstellt: virtuelle CPU, Netzwerk, Festplatte und Co. Diese Komponenten verhalten sich wie echte Geräte – die Befehle gehen durchs Hostsystem zur echten Hardware.
Moderne Prozessoren helfen hier mit: Technologien wie Intel VT-x oder AMD-V ermöglichen, dass privilegierte Befehle direkt auf der Hardware laufen. Das spart Zeit und macht die VMs spürbar schneller.
Oben drauf gibt’s meist noch eine grafische Oberfläche. Darüber kann man VMs starten, stoppen oder konfigurieren – praktisch, wenn man nicht alles über die Kommandozeile machen will.

```plaintext
[Grafik 3: Komponenten eines Type 2 Hypervisors]
```
---

## Netzwerkintegration

Wenn man virtuelle Maschinen ins Netzwerk bringen will, gibt’s mehrere Optionen – je nach Anwendungsfall und gewünschter Trennung. Der Hypervisor stellt verschiedene Modi zur Verfügung, mit denen sich der Netzwerkverkehr steuern lässt:

| Netzwerkmodus   | Was passiert hier genau?                                                               					  |
|-----------------|-----------------------------------------------------------------------------------------------------------|
| NAT             | Die VM geht über die IP des Hosts raus – gut für Internetzugriff, ohne von außen erreichbar zu sein. 	  |
| Bridged         | Die VM hängt direkt im selben Netz wie der Host, bekommt also eine eigene IP vom Router oder DHCP-Server. |
| Host-only       | Die VM kann mit dem Host und mit anderen VMs im selben Host-only-Netz reden – kein Zugang zum Internet.	  |
| Internal        | Hier können nur VMs untereinander kommunizieren, der Host bleibt außen vor – komplett isoliert. 		  |

```plaintext
[Grafik 4: Netzwerkmodi im Vergleich – schematische Darstellung]
```
---

## Bekannte Tools im Vergleich

| Produkt            | Plattformen            | Besonderheiten                             |
|--------------------|------------------------|--------------------------------------------|
| VirtualBox         | Windows, macOS, Linux  | Open Source, viele Plugins                 |
| VMware Workstation | Windows, Linux         | Leistungsstark, Snapshot-Features          |
| Parallels Desktop  | macOS                  | Gute macOS-Integration, kommerziell        |
| QEMU + virt-manager| Linux                  | Sehr flexibel, CLI- und GUI-Unterstützung  |

---

## Vor- und Nachteile

<u>Vorteile:</u>
- Schnelle Einrichtung & Nutzung
- Geringe Einstiegshürde
- Ideal für Test- und Lernumgebungen
- Breite Betriebssystemunterstützung

<u>Nachteile:</u>>
- Performance unter Host-Niveau
- Abhängig vom Hostsystem
- Für produktive Server ungeeignet

---

## Fazit

Type 2 Hypervisoren bieten eine einfache, flexible und sichere Möglichkeit, verschiedene Systeme zu betreiben, ohne zusätzliche Hardware.

<u>Sie sind ideal für:</u>
- Entwickler
- Studierende
- IT-Ausbilder
- Security-Forscher

---
