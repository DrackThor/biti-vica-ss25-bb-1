# Probleme und Limitierungen von Virtualisierung

## Auflistung

**1. Aufwand und Kosten der Umstellung**
Die Umstellung von einem physischen System auf ein virtuelles kann in einigen Fällen mit einem großen Aufwand und hohen Kosten verbunden sein. Je nachdem wie groß und komplex das bisherige System ist und wie veraltet bestimmte Aspekte sind, kann es kompliziert sein alles zu übersetzen ohne Downtime oder sogar Leistungsverlusten. Diese tragen neben möglichen Testphasen und initialen Lizenzabgaben zu den Gesamtkosten bei.

**2. Server- und VM-Sprawl**
Es ist kinderleicht neue Server und VMs anzulegen und einzeln sind sie auch kein Problem, man hat ja genug Ressourcen. Dies kann aber schnell ausufern, wenn man unkontrolliert laufend neue Instanzen erstellt.

**3. Ungleichmäßige Ressourcenverteilung**
Wenn das System nicht korrekt konfiguriert ist, nutzen VMs gelegentlich zu viele bzw. zu wenige Ressourcen. Dies lässt sich aber beheben und in erster Linie in der Anfangsphase ein Problem.

**4. Erschwerte Performance-Überwachung**
Die herkömmlichen Monitoring-Tools für Mainframes oder Einzelserver sehen in der virtuellen Schicht nur noch abstrahierte Werte. Spezialisierte APM-Lösungen sind nötig, um Engpässe in Echtzeit zu erkennen und zuzuordnen.

**5. Lizenzierungsfallen**
Wenn man mit Softwarelizenzen arbeitet muss man darauf, dass man die vorgegebenen Grenzen nicht überschreitet. Wenn man unabsichtlich oder heimlich weitere Instanzen erstellt drohen teure Nachzahlungen.

**6. Sicherheitsrisiken auf Hypervisor-Ebene**
Virtualisierung fügt eine neue Angriffsschicht hinzu: Gelingt ein VM-Escape oder gar Hyperjacking, hat der Angreifer Zugriff auf alle VMs des Hosts. Aktuelle Zero-Day-Lücke in ESXi & Co. zeigen, dass dieses Szenario nicht nur theoretisch ist.

**7. Single Point of Failure bei hoher Konsolidierung**
Bei leichtfertiger Implementierung kann es passieren, dass mehrere kritische Workloads auf dem selben Host laufen. Ein Hardware-Defekt könnte sie dann zum Beispiel alle auf einmal lahmlegen. Selbst man das Risiko versucht mit Live-Migration und Clusterkonzepten zu verringern, bleibt eine gewisse Chance.

**8. Management-Overhead & Tool-Vielfalt**
Abgesehen von den rein technischen Herausforderungen stellt auch ein potenzielles Problem dar: Lifecycle-Management, Patches, Netzwerk-Policies und Zugriffskontrollen usw. erschweren die Verwaltung und Wartung.

**9. Performance-Overhead**
VMs laufen mit einer Hypervisor-Schicht, wodurch sie unvermeidlich mehr Ressourcen in Form Ram, I/O und CPU-Zyklen nutzen, als Bare-Metal-Systemen auf denen einfach bestimmte Anwendungen ohne Virtualisierungen laufen.

**10. Zusätzliche Latenz & fehlende Deterministik**
Der Scheduler des Hypervisors legt fest, wann ein vCPU wirklich auf den physischen Kern darf. Für Echtzeit- oder extrem latenzkritische Workloads (Finanzhandel, Industrieautomaten) ist das ein Problem.

**11. Ressourcenkonkurrenz**
VMs teilen sich gewisse Ressourcen wie z.B. Netzwerkkarten, Storage-Backplane, Cache-Hierarchie usw. Die VMs streiten sich praktisch nonstop um diese Ressourcen und das System muss sicherstellen das sie sinnvoll verteilt werden. Dabei ist zu beachten, dass es laufend ändern kann wie viele Ressourcen eine VM wirklich benötigt und wie kritisch die Applikationen sind, die auf ihnen laufen.

## Quellen
https://www.techrepublic.com/article/cloud-virtualization-disadvantages/
https://gdhinc.com/7-common-virtualization-challenges-and-how-to-overcome-them/
https://www.businessnewsdaily.com/6014-pros-cons-virtualization.html
https://www.veeam.com/blog/virtualization-migration.html
https://www.aquasec.com/cloud-native-academy/cspm/virtualized-security/
https://www.techtarget.com/searchitoperations/feature/5-common-virtualization-problems-and-how-to-solve-them
https://www.sciencedirect.com/science/article/pii/S0141933123000947
https://blogs.cisco.com/datacenter/addressing-the-noisy-neighbor-syndrome-in-modern-sans
