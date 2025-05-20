# <u>**Infrastructure as Code (IaC)**</u>

## 1. Worum geht’s bei Infrastructure as Code?
Viele kennen das noch: Früher wurden Server, Netzwerke und andere Systeme mühsam per Hand eingerichtet. Da wurde viel geklickt, installiert, konfiguriert – und oft fehlte am Ende die Doku.
Mit IaC ändert sich das komplett. Statt Infrastruktur manuell aufzubauen, wird sie einfach als Code beschrieben. Klingt erstmal komisch – aber funktioniert erstaunlich gut. Im Prinzip schreibt man auf, was man braucht (z.B. einen Server mit bestimmten Eigenschaften), und ein Tool setzt das automatisch um.
Der große Vorteil: Man kann seine Infrastruktur versionieren, Änderungen nachverfolgen, automatisieren – eben wie echten Code. Das macht das Ganze viel robuster, nachvollziehbarer und skalierbarer. Gerade in Cloud- und DevOps-Umgebungen ist das inzwischen Standard.

---

## <u>2. Technisches Fundament: Wie funktioniert IaC?</u>
Je nach Anwendungsfall unterscheiden sich die Ansätze. Grob gesagt gibt es zwei Hauptarten, wie Infrastruktur „in Code gegossen“ werden kann:

### Deklarativ: „Was soll existieren?“
Hier beschreibt man nicht, wie man eine Ressource erzeugt, sondern was das Endergebnis sein soll. Zum Beispiel: „Ich brauche einen Webserver mit Ubuntu 22.04, 2 vCPUs und 4 GB RAM.“ Das Tool entscheidet dann selbstständig, welche Schritte nötig sind, um diesen Zustand herzustellen.
<u>Beispiele für deklarative Tools:</u>  
- Terraform  
- AWS CloudFormation  
- Kubernetes Manifeste

### Imperativ: „Wie soll etwas erzeugt werden?“
Der imperative Ansatz beschreibt eine konkrete Abfolge von Befehlen – vergleichbar mit einem Shell-Skript. Man legt genau fest, was wann passiert: „Erzeuge eine VM, installiere Apache, öffne Port 80...“
<u>Beispiele für imperative Tools:</u>
- Ansible  
- Chef  
- Shell-Skripte

Beide Ansätze haben ihre Berechtigung – oft werden sie sogar kombiniert.

---

## 3. Tools, die in der Praxis oft vorkommen
Es gibt jede Menge Tools – hier ein paar, die sich bewährt haben:

| Tool            | Beschreibung |
|-----------------|--------------|
| Terraform       | Sehr beliebt, weil es plattformübergreifend und deklarativ ist. Ideal bei Multi-Cloud. |
| Ansible         | Gut für Konfiguration und Softwareverteilung. Braucht keinen Agenten. |
| CloudFormation  | Von AWS selbst. Arbeitet mit YAML oder JSON. |
| Pulumi          | Moderner Ansatz – man schreibt den Code in Sprachen wie Python oder Go. |

Diese Tools nutzen APIs oder z.B. SSH, um mit der Zielinfrastruktur zu sprechen. In der Regel wird der Code in Git gespeichert, und Deployments laufen automatisiert über CI/CD.

---

## 4. Wie redet der Code mit der Infrastruktur?
Hinter den Kulissen läuft viel über bekannte Protokolle:
- REST APIs --> Wird von fast allen Cloud-Plattformen genutzt
- SSH --> Besonders bei Ansible oder für manuelle Tasks
- Git --> Zur Versionierung und Zusammenarbeit
- CI/CD --> Automatisiert den ganzen Ablauf
- gRPC/Webhooks --> Für schnelle Kommunikation, z.B. bei Pulumi

---

## 5. Typischer Workflow: Vom Code zum System
So sieht ein typischer Ablauf aus:
1. Code schreiben (z.B. Terraform, YAML etc.)
2. In ein Git-Repo einchecken
3. Pipeline startet – z.B. durch einen Commit
4. Tool liest den Code und stellt alles bereit

![Grafik1_Abgabe2](biti-vica-ss25-bb-1/Kogler_Lukas/assets/)

---

## 6. Vorteile und Herausforderungen
<u> Vorteile:</u>
- Weniger Handarbeit, mehr Automatisierung
- Umgebung bleibt konsistent – egal ob Dev, Test oder Prod
- Änderungen sind dokumentiert und rückverfolgbar
- Skalierung klappt auf Knopfdruck

<u>Aber: Es gibt auch Stolperfallen</u>
- Man muss sich reinfuchsen – gerade bei Cloud-Themen
- Terraform z.B. braucht eine sogenannte State-Datei – die muss gepflegt werden
- Fehler beim Deployment sind nicht immer leicht zu analysieren

Kurz gesagt: Es macht vieles einfacher – aber es braucht auch ein gewisses Verständnis, damit es sauber läuft.

---

## 7. Fazit
IaC ist längst mehr als nur ein Trend. Wer heute moderne IT betreibt – ob in der Cloud oder im eigenen RZ –, kommt kaum noch daran vorbei. Es macht die Arbeit schneller, transparenter und sicherer. Und obwohl der Einstieg etwas Aufwand bedeutet, lohnt es sich langfristig definitiv.

Quellen:
https://www.ionos.at/digitalguide/server/knowhow/infrastructure-as-code/
Folien von Herrn Pfläging, LV Aktuelle Themen und Trends (IaC)
Grafik: KI generiert