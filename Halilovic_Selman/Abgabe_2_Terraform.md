# Terraform

## Definition

Terraform ist ein Infrastructure as Code (IaC) Software-Tool, entwickelt von HashiCorp. Alles von simplen Compute-Ressourcen bis hin zu Saas-Funktionen können mithilfe 
von Terraform sicher und effizient gemanaged werden. 

## Technische Grundbegriffe

**Ressourcen**

Die Komponenten einer Infrastructure werden Ressourcen genannt. Dazu gehören z.B. virtuelle Machinen, Datenbank-Tabellen, VPCs und viele weitere. 

**Provider**

Plugins die es Terraform ermöglichen sich mit bestimmten Infrastruce-Hosts zu verbinden. Provider implementieren die Interaktion mit dem jeweiligen Host über dessen API.
Die Terraform Registry biete eine ausführliche Liste öffentlich zugänglicher Provider für verschiedenste Dienste (AWS, Azure, VMware, GitHub usw.).

**Module**

Wiederverwendbare Bündel aus Ressourcen, die aus einem root module mit mehreren child modules bestehen. Module für häufig vorkommende Szenarien werden ebenfalls in der 
Terraform Registry angeboten.

**HCL**

Hashicorp Configuration Language. Deklarative Sprache mit der die Infrastructure beschrieben wird. Kann mit Variablen, Ausdrücken und local-Blöcken parametrisiert werden.

**State-Datei**

Der aktuelle Zustand der Infrastructure wird in der sogennanten state file geschpeichert (terraform.tfstate). Es muss darauf geachtet werden, dass alle Teilnehmer mit der
selben Datei arbeiten, weswegen Terraform dazu ratet diese Datei remote (Remote-State) zu hosten (z.B. mit Terraform Cloud).

## Workflow

Allgemein lässt sich der Ablauf bei der Verwendung von Terraform folgendermaßen beschreiben:

**Schritt 1: Write**

Deklarieren der Infrastructure als Code in HCL. Dazu gehört auch die Konfiguration der Ressourcen. Z.B. könnte man eine Applikation auf virtuellen Machinen auf einem
VPC-Netzwerk deployen. Dabei können mehrere verschiedene Cloud Provider und Services teilnehmen.

**Schritt 2: Review**

Nun gibt Terraform einen Exekutionsplan an anhand eines Vergleichs der definierten Infrastructure und des eigentlichen Zustands der Ressourcen die zur Verfügung stehen.

**Schritt 3: Apply**

Der Nutzer nimmt den Plan an. Das bedeutet, dass Terraform die angegebenen Operationen durchführt womit in der spezifizierten Reihenfolge Infrastructure-Ressourcen hinzugefügt,
geupdated oder entfernt werden. 

## Use Cases
1. Umgebungen einfach und konsistent kopieren bzw. ändern (z.B. eine leicht veränderte Testumgebung basierend auf Deployment)
2. Koordinierung über mehrere Cloud Provider
3. Sicherstellen das gewisse Dependencies sicher und konsistent geladen werden

## Erweiterungen

**HCP Terraform**

SaaS-Produkt von HashiCorp, das u.a. Remote-Runs, VCS-Integrationen und Remote-State anbietet. Kostenlos für kleinere Teams unter bestimmten Umständen.

**Sentinel**

Policy as Code Werkzeug, dass Nutzern von HashiCorp-Anwendungen vorgibt wie sich verhalten könnten bzw. welche Änderungen sie durchführen dürfen.

## Alternative OpenTofu
Nachdem HashiCorp die Lizenz für Terraform änderte, wurde OpenTofu aufbauend auf einen Fork einer älteren Terraform-Version gestartet. OpenTofu wird mittlerweile von der
Linux Foundation gehostet und soll im Gegensatz zu Terraform vollkommen open-source bleiben. Da es ein Fork von Terraform ist, hat sich an der Funktionsweise von HCL nichts
geändert und bisherige Provider und Module funktionieren weiterhin. Abgesehen davon implementiert OpenTofu teilweise aber auch neue Features wie client-seitige State-Encryption.
Es ist möglich, dass sich die beiden Projekte feature-mäßig in andere Richtungen erwickeln werden, wobei bei OpenTofu der Kurs von der Community und bei Terraform von HashiCorp
gesteurt werden wird.

## Fazit
Terraform verwandelt die Handarbeit beim Infrastructure-Provisioning in versionierten Code, erstellt reproduzierbare Builds und erleichtert Multi-Cloud-Strategien.
Es ist dabei nicht nur bei der initialen Bereitstellung hilfreich, sondern vor allem im Laufe eines Projektes, wenn etwas geändert oder erweitert werden muss. 
In seinem umfangreichen Ökosystem von Providern, Modulen und Erweiterungen lässt sich fast jeder Service finden, wobei man auch selber mit neuen Sachen beitragen kann. 

## Quellen
https://developer.hashicorp.com/terraform
https://developer.hashicorp.com/terraform/intro
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/infrastructure-as-code
https://spacelift.io/blog/what-is-terraform
https://developer.hashicorp.com/terraform/cloud-docs/overview
https://developer.hashicorp.com/sentinel
https://www.env0.com/blog/opentofu-the-open-source-terraform-alternative
https://www.harness.io/blog/why-you-should-use-opentofu-instead-of-terraform