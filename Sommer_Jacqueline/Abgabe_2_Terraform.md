# Terraform – Infrastructure as Code

## Worum handelt es sich bei Terraform?

Terraform ist ein Open-Source-Tool von HashiCorp, das zur Verwaltung von IT-Infrastruktur als Code (Infrastructure as Code, IaC) dient. Mit Terraform können Ressourcen wie Server, Netzwerke oder Datenbanken deklarativ beschrieben, automatisiert bereitgestellt und verwaltet werden. Die Konfiguration erfolgt in der HashiCorp Configuration Language (HCL), die leicht lesbar und verständlich ist. Terraform ermöglicht es, Infrastrukturänderungen nachzuvollziehen, zu versionieren und wiederholbar auszurollen.

---

## In welchem Kontext wird der Begriff verwendet?

Terraform kommt überall dort zum Einsatz, wo Infrastruktur automatisiert, konsistent und skalierbar bereitgestellt werden soll. Typische Anwendungsbereiche sind:

- **Cloud-Infrastrukturen:** Automatisierte Bereitstellung und Verwaltung von Ressourcen bei Anbietern wie AWS, Azure und Google Cloud.
- **Multi-Cloud- und Hybrid-Cloud-Umgebungen:** Einheitliche Verwaltung von Ressourcen unterschiedlicher Anbieter und lokaler Systeme.
- **DevOps und CI/CD:** Integration in Deployment-Pipelines, um Test-, Staging- und Produktionsumgebungen konsistent zu halten.
- **Self-Service-Infrastruktur:** Teams können Infrastruktur eigenständig und kontrolliert bereitstellen.

---

## (Grobe) technische Funktionsweise

Terraform arbeitet deklarativ: Der gewünschte Endzustand der Infrastruktur wird in Konfigurationsdateien beschrieben. Das Tool vergleicht diesen Soll-Zustand mit dem aktuellen Ist-Zustand und führt die erforderlichen Änderungen durch.

**Workflow:**

1. **Write:** Ressourcen werden in HCL definiert.
2. **Plan:** Mit `terraform plan` wird eine Vorschau der geplanten Änderungen erzeugt.
3. **Apply:** Mit `terraform apply` werden die Änderungen umgesetzt.
4. **State:** Terraform speichert den aktuellen Zustand der Infrastruktur in einer State-Datei (`terraform.tfstate`), um Abweichungen zu erkennen und Ressourcen gezielt zu verwalten.

**Beispiel einer Terraform-Konfiguration:**

```hcl
provider "aws" {
region = "eu-central-1"
}

resource "aws_instance" "web" {
ami = "ami-123456"
instance_type = "t2.micro"
}
```

---

## Gängige Protokolle, Produkte und Tools

- **Protokolle:** Terraform kommuniziert mit Cloud-Anbietern und anderen Systemen meist über REST-APIs.
- **Produkte:**
  - **HashiCorp Terraform** (Open Source und Enterprise Edition)
  - **Terraform Cloud** (gehosteter Service von HashiCorp)
- **Tools:**
  - **tfswitch**, **tfenv**: Version-Management für Terraform
  - **tflint**, **terraform-docs**: Code-Qualität und Dokumentation
  - **Terraform Registry**: Zentrale Plattform für Module und Provider

---

## Architektur/Schaubild/grafische Veranschaulichung

```text
+--------------------------+
|  Terraform-Konfiguration |
|        (HCL-Dateien)     |
+-----------+--------------+
            |
            v
+--------------------------+
|      Terraform Core      |
|  - verarbeitet HCL       |
|  - verwaltet State-Datei |
+-----------+--------------+
            |
            v
+--------------------------+
|        Provider          |
| (z.B. AWS, Azure, GCP)   |
+-----------+--------------+
            |
            v
+--------------------------+
|      Cloud-APIs etc.     |
+--------------------------+
```

**Erklärung:**  

- Die Konfigurationsdateien (HCL) werden vom Nutzer erstellt.  
- Terraform Core verarbeitet die Konfiguration, plant und setzt Änderungen um und verwaltet die State-Datei, die den aktuellen Zustand der Infrastruktur speichert.  
- Über Provider werden die gewünschten Ressourcen in der jeweiligen Cloud oder Umgebung umgesetzt.

---

## Fazit

Terraform ist ein zentrales Werkzeug für die moderne Infrastrukturverwaltung. Es bietet eine deklarative, automatisierte und konsistente Möglichkeit, Ressourcen über verschiedene Plattformen hinweg zu verwalten. Besonders in DevOps-, Cloud- und Multi-Cloud-Umgebungen ist Terraform ein unverzichtbares Tool, um Infrastruktur effizient und nachvollziehbar zu betreiben.

---

## Quelle

[Terraform – Official Documentation (English)](https://developer.hashicorp.com/terraform/docs)
