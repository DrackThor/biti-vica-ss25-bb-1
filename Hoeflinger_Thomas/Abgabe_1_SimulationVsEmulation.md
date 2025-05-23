## Simulation und Emulation

---

### Simulation

#### 1. Worum handelt es sich bei dem Begriff?  
Eine **Simulation** ist die Nachbildung eines realen oder hypothetischen Systems als virtuelles Modell. Ziel ist, das Verhalten unter definierten Bedingungen nachzustellen, ohne das System physisch zu bauen.

#### 2. In welchem Kontext wird der Begriff verwendet?  
- Ausbildung (z. B. Flugsimulatoren, Fahrsimulatoren)  
- Forschung (Wetter- und Klimavorhersage, Astrophysik)  
- Ingenieurwissenschaften (Netzwerksimulation, Produktions- und Logistikprozesse)  
- Trainings- und Sicherheitsszenarien, wenn reale Tests zu riskant, teuer oder unpraktisch sind.

#### 3. (Grobe) technische Funktionsweise  
- Aufbau eines abstrakten Modells mit relevanten Parametern und Regeln  
- Diskrete-Ereignis- oder kontinuierliche Zeitsteuerung  
- Schrittweise Berechnung von Zustandsänderungen  
- Keine Echtzeit-Pflicht – kann zeitraffend oder -dehnend ausgeführt werden  
- Einsatz numerischer Methoden zur Lösung zugrundeliegender Gleichungen

#### 4. Gängige Protokolle, Produkte, Tools  
- **ns-3**, **OMNeT++**, **OPNET** (Netzwerksimulation)  
- **MATLAB/Simulink** (Regelungstechnik, Robotiksimulation)  
- Flugsimulatoren-Produkte (z. B. Cockpit-Nachbildungen)  
- Prozess- und Industriesimulatoren (chemische Anlagen, Fertigungsstraßen)  
- Finanzmarkt-Simulationsplattformen

#### 5. Architektur / grafische Veranschaulichung  
- Parameter und Szenarien werden eingespeist  
- Modellkern rechnet anhand definierter Regeln/Algorithmen  
- Ergebnis liefert Prognosen oder Verhaltensanalysen

---

### Emulation

#### 1. Worum handelt es sich bei dem Begriff?  
Eine **Emulation** imitiert ein vorhandenes System so vollständig, dass ein Host-System sich exakt wie das Original verhält und originale Software oder Hardware sofort weiterläuft.

#### 2. In welchem Kontext wird der Begriff verwendet?  
- Retro-Gaming (z. B. Super-Nintendo-Emulatoren)  
- Rückwärtskompatibilität in der IT (Mainframe-Programme auf neuer Hardware)  
- Mobile-App-Entwicklung (Android-Emulator, iOS-Simulator)  
- Virtualisierung (VMware, VirtualBox, QEMU)  
- Netzwerk-Emulation (Jitter, Latenz, Paketverlust)  
- Hardware-Entwicklung (FPGA-basierte Emulatoren, In-Circuit-Emulatoren)

#### 3. (Grobe) technische Funktionsweise  
- Vollständige Nachbildung von CPU, Speicher, Peripherie  
- Interpretation oder Just-In-Time-Übersetzung (Binary Translation) von Maschinencode  
- Exaktes Timing (Prozesstakte, Bus- und Speicherzugriff)  
- Echtzeit-Anforderung, damit Software und Benutzer keinen Unterschied bemerken  
- Einsatz spezieller Hardware (z. B. FPGA) zur Performance-Optimierung

#### 4. Gängige Protokolle, Produkte, Tools  
- **ZSNES**, **DOSBox**, **MAME** (Retro-Emulatoren)  
- **QEMU**, **VirtualBox**, **VMware** (System- und Plattform-Emulation)  
- **Android Emulator** (vollständige Gerätemodell-Emulation)  
- **Linux NetEm**, **Apposite Netropy** (Netzwerk-Emulation)  
- In-Circuit-Emulatoren (Mikrocontroller-Debugging)

#### 5. Architektur / grafische Veranschaulichung - Emulator liest native Instruktionen ein  
- Führt sie auf dem Host aus, liefert identisches Output  
- Optional JIT-Übersetzer oder FPGA-Unterstützung

---

## Zusammenfassungstabelle

| Aspekt                 | Simulation                                          | Emulation                                                |
|------------------------|-----------------------------------------------------|----------------------------------------------------------|
| **Zweck**              | Modell zur Analyse, Prognose und Ausbildung         | Funktionsgetreuer Ersatz des Originals                   |
| **Detailgrad**         | Abstraktion, Fokus auf Kernverhalten                | Vollständige Nachbildung aller relevanten Eigenschaften  |
| **Echtzeit**           | Nicht zwingend – zeitraffend oder -dehnend möglich | Muss meist in Echtzeit laufen                           |
| **Eingabedaten**       | Künstliche oder hypothetische Szenarien            | Original-Software und reale Daten                        |
| **Implementierung**    | High-Level-Modelle, numerische Methoden             | Low-Level-Nachbildung, Maschinencode, Binary Translation |
| **Performance**        | Effizient durch Vereinfachungen                     | Overhead durch detailgetreue Nachbildung, JIT/FPGA nötig |
| **Anwendungsbeispiele**| Flugsimulator, Netzwerksimulation, Prozessmodell    | Retro-Gaming, Virtual Machines, Netzwerk-Emulatoren      |



 
 
