## **Terraform – Infrastruktur als Code verständlich erklärt**

### **1. Was ist Terraform?**

Terraform ist ein Open-Source-Tool von HashiCorp, das zur automatisierten Verwaltung von IT-Infrastrukturen dient. Es basiert auf dem Prinzip der „Infrastructure as Code“ (IaC), was bedeutet, dass die gesamte Infrastruktur in Codeform beschrieben wird. Dadurch können Ressourcen wie Server, Netzwerke, Datenbanken und viele weitere Komponenten reproduzierbar, versionierbar und konsistent verwaltet werden.

Mit Terraform lassen sich Ressourcen in verschiedenen Cloud-Umgebungen (wie AWS, Azure, Google Cloud) sowie in lokalen Rechenzentren erstellen, ändern und löschen – und das alles mit Hilfe einfacher Textdateien.

### **2. In welchem Kontext wird Terraform eingesetzt?**

Terraform kommt besonders im Umfeld von DevOps und Cloud-Infrastrukturen zum Einsatz. Typische Einsatzgebiete sind:

- Automatisiertes Bereitstellen von Infrastruktur in der Cloud
    
- Aufbau komplexer Multi-Cloud-Umgebungen
    
- Implementierung von Continuous Integration / Continuous Deployment (CI/CD)
    
- Testumgebungen und Entwicklungsumgebungen automatisch aufsetzen
    
- Disaster-Recovery-Szenarien vorbereiten
    

In Unternehmen wird Terraform häufig als zentrales Werkzeug genutzt, um Entwicklungs-, Test- und Produktionsumgebungen einheitlich und nachvollziehbar aufzubauen. Besonders wertvoll ist der Einsatz von Terraform in Teams, da sich Änderungen am Infrastruktur-Code über Versionskontrollsysteme wie Git sauber nachverfolgen lassen.

### **3. Technische Funktionsweise**

Terraform arbeitet deklarativ, d. h. man beschreibt **was** man möchte (z. B. eine virtuelle Maschine in AWS), nicht **wie** diese erstellt werden soll. Die technische Umsetzung übernimmt Terraform im Hintergrund.

Die Konfiguration erfolgt in der sogenannten **HashiCorp Configuration Language (HCL)** oder alternativ in JSON. Diese Dateien enthalten alle Informationen über die zu erstellenden Ressourcen.

Ein typischer Arbeitsablauf mit Terraform sieht so aus:

1. **Konfiguration schreiben**: Die gewünschte Infrastruktur wird in `.tf`-Dateien beschrieben.
    
2. **Planung mit `terraform plan`**: Terraform prüft, welche Änderungen notwendig sind, um den beschriebenen Zustand zu erreichen.
    
3. **Ausführung mit `terraform apply`**: Die beschriebenen Ressourcen werden erstellt, geändert oder gelöscht.
    
4. **Statusverwaltung**: Terraform speichert den aktuellen Zustand der Infrastruktur in einer sogenannten „State-Datei“. Diese Datei ist essenziell, um zukünftige Änderungen korrekt zu planen.
    

Ein zentrales Konzept sind dabei **Provider**, über die Terraform mit unterschiedlichen Plattformen kommuniziert. Für jede unterstützte Umgebung – etwa AWS, Azure, Google Cloud oder Kubernetes – gibt es einen passenden Provider, der die jeweiligen APIs anspricht.

### **4. Gängige Protokolle, Produkte und Tools**

Terraform selbst nutzt die APIs der jeweiligen Plattformen, um Ressourcen zu provisionieren. Dabei handelt es sich in der Regel um REST-APIs der Cloudanbieter. Auch Authentifizierungsmechanismen wie OAuth oder rollenbasierte Zugriffskontrollen (z. B. AWS IAM) spielen dabei eine wichtige Rolle.

**Beliebte Provider:**

- **AWS (Amazon Web Services)**
    
- **Microsoft Azure**
    
- **Google Cloud Platform**
    
- **Kubernetes**
    
- **VMware**
    
- **Docker**
    

**Wichtige Tools im Terraform-Ökosystem:**

- **Terraform CLI**: Das Hauptwerkzeug zum Ausführen von Terraform-Befehlen
    
- **Terraform Cloud / Terraform Enterprise**: Gehostete Plattform zur Teamarbeit, inklusive Versionskontrolle, Genehmigungs-Workflows und Remote-State-Verwaltung
    
- **Terragrunt**: Ein Wrapper-Tool für Terraform, das Wiederverwendbarkeit und Organisation bei großen Codebasen verbessert
    
- **VS Code Plugin für Terraform**: Für Syntaxprüfung, Autovervollständigung und bessere Übersicht beim Schreiben von Konfigurationen
    

