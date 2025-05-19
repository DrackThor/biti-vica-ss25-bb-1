# Doing Things as Code – Vorteile und Beispiele
## 1. Worum handelt es sich bei dem Begriff?

„**Doing things as Code**“ beschreibt einen modernen Ansatz in der IT, bei dem Prozesse, Systeme und Abläufe **mittels Code beschrieben und automatisiert** umgesetzt werden – anstatt sie manuell zu konfigurieren oder zu steuern. Das bedeutet, dass Dinge wie:

- Serverinfrastruktur,
- Software-Konfiguration,
- Sicherheitsrichtlinien,
- oder Build- und Deploymentprozesse

nicht über grafische Oberflächen (z. B. Web-Portale) oder händische Abläufe verwaltet werden, sondern über **Textdateien, Skripte oder deklarative Konfigurationsformate** (z. B. YAML, JSON, HCL).

Der große Vorteil: Diese Dateien lassen sich **versionieren, testen, überprüfen und automatisieren** – ganz wie Quellcode in der Softwareentwicklung.

## 2. In welchem Kontext wird der Begriff verwendet?

„Things as Code“ ist ein zentrales Prinzip im **DevOps-, Cloud- und Automatisierungsumfeld**. Die Idee: IT-Teams arbeiten wie Entwickler – sie definieren ihre Infrastruktur, Konfigurationen und Prozesse in Codeform, um sie:

- schneller bereitzustellen,
- zuverlässig zu reproduzieren,
- teamübergreifend zu verwalten und
- automatisiert auszurollen.

Typische Anwendungsfälle:
- Ein Entwicklerteam schreibt eine Deployment-Pipeline als YAML-Datei.
- Ein Cloud-Team erstellt Server und Netzwerke mit einem Terraform-Skript.
- Ein Sicherheitsteam beschreibt Zugriffskontrollen als Code und prüft sie automatisch.

## 3. Grobe technische Funktionsweise

Je nach Anwendungsfall basiert „Doing things as Code“ auf unterschiedlichen technischen Prinzipien:

- **Deklarativer Ansatz**: Man beschreibt den gewünschten Zustand („Was soll existieren?“), z. B. eine VM mit 2 CPUs und 8 GB RAM – das Tool übernimmt die Umsetzung (z. B. Terraform).
- **Imperativer Ansatz**: Man beschreibt die Schritte zur Umsetzung („Wie soll es gemacht werden?“), z. B. Shell-Skripte oder Ansible-Playbooks.

Der typische Ablauf sieht so aus:

1. **Definition**: Ein Prozess oder eine Umgebung wird als Code beschrieben.
2. **Versionskontrolle**: Der Code wird in einem Git-Repository gespeichert.
3. **Ausführung**: Tools oder CI/CD-Pipelines lesen den Code und führen ihn aus.
4. **Überwachung**: Automatisierte Tests oder Statusprüfungen validieren das Ergebnis.

## 4. Gängige Tools und Technologien

Je nachdem, was als Code umgesetzt wird, kommen unterschiedliche Tools zum Einsatz:

| Anwendungsbereich           | Typisches Tool             | Beschreibung |
|-----------------------------|----------------------------|--------------|
| **Infrastruktur (IaaC)**    | Terraform, Pulumi, CloudFormation | Infrastruktur (VMs, Netzwerke, Datenbanken) wird automatisiert erstellt |
| **Konfiguration**           | Ansible, Puppet, Chef       | Server- und Softwarekonfiguration als Code |
| **CI/CD (Pipelines)**       | GitLab CI, GitHub Actions, Jenkins | Automatisierte Build-, Test- und Deployment-Prozesse |
| **Sicherheitsrichtlinien**  | Open Policy Agent (OPA), Sentinel | Policies als Code – z. B. Zugriffskontrollen oder Compliance |
| **Monitoring & Logging**    | Grafana (Dashboards als JSON), Prometheus (Konfig) | Überwachung von Systemen über konfigurierbare Code-Dateien |

Diese Tools setzen oft auf Protokolle wie **SSH**, **REST-APIs**, oder **gRPC**, um mit anderen Systemen zu interagieren und Aufgaben auszuführen.

## 5. Grafische Veranschaulichung

Ein typischer Workflow für „Doing Things as Code“:

![[Pasted image 20250519181114.png]]

Jede Änderung wird als Code definiert, automatisiert getestet und kontrolliert ausgerollt – genau wie bei Software.

## 6. Vorteile (Benefits)

- **Versionierbarkeit**: Änderungen sind nachvollziehbar und rückverfolgbar.
- **Wiederholbarkeit**: Gleiche Umgebungen lassen sich beliebig oft identisch erstellen.
- **Automatisierung**: Reduziert manuelle Fehler, spart Zeit und erhöht die Zuverlässigkeit.
- **Teamkollaboration**: Entwickler, Ops und Sicherheitsteams arbeiten gemeinsam über Git.
- **Skalierbarkeit**: Systeme und Prozesse wachsen mit – ohne erhöhten manuellen Aufwand.
- **Transparenz**: Reviewprozesse und automatische Tests machen Änderungen nachvollziehbar und sicher.

### Beispiel 1: Infrastruktur als Code (Terraform)

Mit Terraform kann man Infrastruktur in Cloud-Umgebungen wie AWS, Azure oder Google Cloud vollständig als Code definieren. Hier ein einfaches Beispiel für eine virtuelle Maschine auf der Plattform **AWS**:

```hcl
# main.tf

# Konfiguration des Cloud-Providers (AWS in der Region Frankfurt)
provider "aws" {
  region = "eu-central-1"
}

# Definition einer virtuellen Maschine (EC2-Instanz)
resource "aws_instance" "webserver" {
  # Amazon Machine Image (Ubuntu, Beispiel-ID – kann je nach Region variieren)
  ami           = "ami-0c55b159cbfafe1f0"

  # Instanztyp – t2.micro ist kostenlos im Free Tier enthalten
  instance_type = "t2.micro"

  # Tags zur besseren Identifikation in der AWS-Konsole
  tags = {
    Name = "Beispiel-Webserver"
  }
}
```
### Beispiel 2: Pipeline als Code (GitHub Actions)

Ein YAML-File im Projekt definiert: Bei jedem Push ins Repository werden automatisch Unit-Tests durchgeführt, das Projekt gebaut und – wenn erfolgreich – in eine Testumgebung deployt.

```yaml
# .github/workflows/ci.yml

# Name der CI-Pipeline
name: CI Pipeline

# Wann soll die Pipeline ausgelöst werden? → Bei jedem Push auf den main-Branch
on:
  push:
    branches: [ main ]

# Definition des Jobs
jobs:
  build-and-test:
    # Ausführungsumgebung: Ubuntu-Linux-VM in der GitHub Cloud
    runs-on: ubuntu-latest

    steps:
      # 1. Quellcode aus dem Repository klonen
      - uses: actions/checkout@v3

      # 2. Node.js-Umgebung einrichten (Version 18)
      - name: Set up Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '18'

      # 3. Abhängigkeiten aus package.json installieren
      - name: Install dependencies
        run: npm install

      # 4. Tests ausführen (z. B. mit Jest, Mocha etc.)
      - name: Run tests
        run: npm test
```

### Beispiel 3: Policy as Code (Open Policy Agent)

Ein Team legt in Code fest: „Nur verschlüsselte Speicherdienste dürfen verwendet werden.“ Jede neue Ressource wird gegen diese Policy geprüft – automatisch im Deployment-Prozess.

```rego
# policy.rego

# Definition eines Regelpakets unter dem Namespace "storage.policy"
package storage.policy

# Regel: Liefere eine Fehlermeldung zurück, wenn Verschlüsselung deaktiviert ist
deny[msg] {
  # Bedingung: Input enthält ein Feld "encryption" mit Wert false
  input.encryption == false

  # Fehlernachricht, die im Tool oder CI-System angezeigt wird
  msg = "Unverschlüsselter Speicher ist nicht erlaubt."
}
```

