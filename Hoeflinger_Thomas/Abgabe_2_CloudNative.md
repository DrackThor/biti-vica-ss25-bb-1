Authoren: Philipp Kohlhofer / Thomas Höflinger

# Was bedeutet „Cloud Native“?

## Was bedeutet „Cloud Native“?

Der Begriff **Cloud Native** beschreibt einen Ansatz zur Entwicklung und zum Betrieb von Anwendungen, der speziell für Cloud-Umgebungen konzipiert ist. Cloud Native-Anwendungen nutzen die Vorteile der Cloud – wie Skalierbarkeit, Elastizität, Resilienz und Automatisierung – optimal aus.

Die *Cloud Native Computing Foundation (CNCF)* definiert Cloud Native folgendermaßen:

> „Cloud Native-Technologien ermöglichen es Unternehmen, skalierbare Anwendungen in modernen, dynamischen Umgebungen wie öffentlichen, privaten und hybriden Clouds zu erstellen und auszuführen.“

Cloud Native ist weniger ein konkretes Produkt, sondern vielmehr ein **Paradigmenwechsel** in der Softwareentwicklung.

## Kontext der Verwendung

Cloud Native kommt typischerweise in folgenden Bereichen zum Einsatz:

- **Moderne Anwendungsentwicklung**: Statt monolithischer Anwendungen setzen Cloud Native-Ansätze auf Microservices.
- **DevOps und Continuous Delivery**: Automatisierte Build-, Test- und Deployment-Prozesse sind zentrale Bestandteile.
- **Containerisierung und Orchestrierung**: Docker und Kubernetes sind hier die Schlüsseltechnologien.
- **Cloud-Infrastrukturen**: Cloud Native ist eng verknüpft mit Public-Cloud-Anbietern wie AWS, Microsoft Azure und Google Cloud.

Insbesondere Unternehmen, die schnell auf Marktveränderungen reagieren müssen (z.B. Startups oder digitale Plattformanbieter), profitieren von Cloud Native.

## Technische Funktionsweise (grob)

Cloud Native-Anwendungen bestehen typischerweise aus **Microservices**, die als **Container** bereitgestellt werden. Jeder Microservice ist unabhängig entwickel-, test- und skalierbar. Die Kommunikation zwischen den Diensten erfolgt meist über **APIs** (REST, gRPC).

### Zentrale technische Merkmale:

- **Containerisierung**: Anwendungen und ihre Abhängigkeiten werden in Containern verpackt (z.B. mit Docker).
- **Orchestrierung**: Kubernetes sorgt dafür, dass Container automatisch gestartet, gestoppt und skaliert werden.
- **Service Meshes** (z.B. Istio): Verwalten die Kommunikation zwischen Services inkl. Sicherheit und Routing.
- **Observability**: Tools wie Prometheus, Grafana und ELK Stack ermöglichen Überwachung, Logging und Tracing.
- **Infrastructure as Code (IaC)**: Infrastruktur wird automatisiert mit Tools wie Terraform oder Ansible bereitgestellt.

## Gängige Protokolle, Produkte und Tools

### Protokolle

In einer Cloud Native-Architektur kommunizieren viele Komponenten automatisiert miteinander – oft über Netzwerke hinweg. Dafür werden standardisierte Protokolle und Telemetrie-Standards eingesetzt. Hier eine Übersicht:

---

#### **HTTP / HTTPS**
> **HTTP (Hypertext Transfer Protocol)** ist das weltweit meistgenutzte Protokoll zur Datenübertragung im Web. In Cloud Native-Umgebungen dient es oft als Kommunikationsbasis zwischen Microservices über REST-APIs.

- **HTTPS** ist die verschlüsselte Variante und sorgt für sichere Datenübertragung.
- REST (Representational State Transfer) basiert typischerweise auf HTTP.
- Beispiel: `GET /users/123` ruft Nutzerdaten ab.

**Typischer Einsatzbereich:**  
Kommunikation zwischen Frontend und Backend, zwischen Microservices, API-Gateways

---

#### **gRPC (Google Remote Procedure Call)**
> **gRPC** ist ein modernes Remote-Procedure-Call-Protokoll, das auf HTTP/2 basiert und standardmäßig **Protobuf** (Protocol Buffers) zur Datenserialisierung verwendet.

- Besonders effizient durch binäre Übertragung
- Ermöglicht Streaming und bidirektionale Kommunikation
- Ideal für Hochleistungs-Microservices

**Vorteile gegenüber REST:**
- Schnellere Datenübertragung
- Automatische Code-Generierung (Client & Server)
- Unterstützung für verschiedene Sprachen

**Typischer Einsatzbereich:**  
Interne Kommunikation zwischen performanzkritischen Microservices

---

#### **OpenTelemetry**
> **OpenTelemetry** ist kein Netzwerkprotokoll im klassischen Sinn, sondern ein **Standard für die Erfassung, Verarbeitung und Weiterleitung von Telemetriedaten** – wie Logs, Metriken und Traces.

OpenTelemetry wurde von der CNCF initiiert und ist ein Zusammenschluss früherer Projekte wie OpenTracing und OpenCensus.

**Ziele:**
- Einheitliche Schnittstellen für **Observability**
- Herstellerunabhängige Sammlung von Betriebsdaten
- Integration mit Tools wie Prometheus, Grafana, Jaeger, Zipkin

**Datenarten in OpenTelemetry:**
- **Traces:** Ablauf einzelner Anfragen durch das System (z.B. über mehrere Microservices hinweg)
- **Metriken:** Quantitative Daten wie CPU-Auslastung oder Anfragen pro Sekunde
- **Logs:** Zeitlich geordnete Textnachrichten aus Anwendungen oder Systemen

**Typischer Einsatzbereich:**  
Systemüberwachung, Fehleranalyse, Performance-Optimierung

**Beispielhafte Architektur mit OpenTelemetry:**


[App/Service] 
   └──> OpenTelemetry SDK
           ├── Tracing
           ├── Metrics
           └── Logging
               ↓
       Export zu Tools wie:
           - Jaeger (Traces)
           - Prometheus/Grafana (Metrics)
           - ELK Stack (Logs)


### Tools & Produkte

In einer Cloud Native-Umgebung kommen eine Vielzahl spezialisierter Tools zum Einsatz. Sie unterstützen Entwickler*innen und DevOps-Teams bei Bereitstellung, Skalierung, Automatisierung und Überwachung moderner Anwendungen. Hier ein Überblick über zentrale Tool-Kategorien und deren typische Vertreter:

---

#### **Container**

> Container sind leichtgewichtige, isolierte Umgebungen zur Ausführung von Anwendungen und deren Abhängigkeiten.

- **Docker**: Das populärste Tool zur Container-Erstellung, -Verwaltung und -Verteilung. Entwickler können Anwendungen samt ihrer Konfiguration „verpacken“.
- **Podman**: Eine Docker-Alternative ohne Daemon, mit Fokus auf Sicherheit und Rootless-Container.

**Einsatzgebiet:**  
Lokale Entwicklung, Build-Prozesse, Microservice-Verpackung

---

#### **Orchestrierung**

> Orchestrierungstools verwalten Container automatisch in großem Maßstab: Start, Skalierung, Ausfallsicherheit usw.

- **Kubernetes**: Der De-facto-Standard für Container-Orchestrierung. Verwaltet Container-Cluster, unterstützt Auto-Scaling und Self-Healing.
- **OpenShift**: Kommerzielle Kubernetes-Distribution von Red Hat mit integrierten Entwickler-Tools und Security-Features.

**Einsatzgebiet:**  
Produktionsbetrieb und Skalierung containerisierter Anwendungen

---

#### **CI/CD (Continuous Integration / Continuous Deployment)**

> Tools zur Automatisierung von Build-, Test- und Deployment-Prozessen.

- **Jenkins**: Älteres, sehr flexibles CI/CD-Tool mit großer Plugin-Vielfalt.
- **GitLab CI**: Integrierter Bestandteil von GitLab, definiert Pipelines einfach per `.gitlab-ci.yml`.
- **Argo CD**: Kubernetes-natives Tool zur kontinuierlichen Bereitstellung basierend auf GitOps-Prinzipien.

**Einsatzgebiet:**  
Automatisierung von Code-Integration, Tests und Rollouts

---

#### **Monitoring & Logging**

> Diese Tools erfassen Betriebsdaten, stellen Dashboards bereit und helfen bei Fehleranalyse und Systembeobachtung.

- **Prometheus**: Open-Source-Monitoring mit Zeitreihen-Datenbank. Häufig in Kombination mit Grafana.
- **Grafana**: Visualisierungstool für Metriken und Logs, unterstützt verschiedene Datenquellen.
- **Loki**: Logging-System von Grafana Labs, ähnlich wie Prometheus – aber für Logs.
- **ELK Stack (Elasticsearch, Logstash, Kibana)**: Leistungsstarke Log-Analyse- und Visualisierungsplattform.

**Einsatzgebiet:**  
Systemüberwachung, Alerting, Ursachenanalyse

---

#### **Infrastructure as Code (IaC)**

> Mit IaC wird Infrastruktur nicht manuell, sondern über Code (meist in YAML, JSON, HCL etc.) definiert und automatisiert bereitgestellt.

- **Terraform**: Open-Source-Tool von HashiCorp, mit Unterstützung für viele Cloud-Anbieter.
- **Pulumi**: Moderne IaC-Lösung, die statt deklarativer Konfiguration Programmiersprachen wie TypeScript oder Python verwendet.
- **Ansible**: Konfigurationsmanagement-Tool, das Systeme über SSH automatisiert konfiguriert.

**Einsatzgebiet:**  
Wiederholbare, versionierbare Infrastrukturbereitstellung

---

#### 🕸️ **Service Mesh**

> Service Meshes verwalten die interne Kommunikation zwischen Microservices – inklusive Sicherheit, Routing und Telemetrie – ohne den Anwendungscode zu verändern.

- **Istio**: Mächtiger Service Mesh mit Traffic Management, Sicherheitsfunktionen, Telemetrie und mehr.
- **Linkerd**: Schlanker, einfacherer Service Mesh für Kubernetes, mit Fokus auf Performance und Benutzerfreundlichkeit.

**Einsatzgebiet:**  
Sichere, nachvollziehbare Kommunikation in Microservice-Architekturen

---

Diese Tools sind zentrale Bausteine für den Betrieb und die Entwicklung Cloud Native-basierter Anwendungen. Sie ermöglichen Skalierbarkeit, Automatisierung, Transparenz und Zuverlässigkeit in dynamischen Cloud-Umgebungen.


## Architektur und grafische Veranschaulichung

Die typische Cloud Native-Architektur besteht aus folgenden Schichten:


+------------------------------------------+
|                Endnutzer                 |
+------------------------------------------+
|        API Gateway / Load Balancer       |
+------------------------------------------+
|           Microservices (Container)      |
|   (Kommunikation über REST/gRPC APIs)    |
+------------------------------------------+
|         Kubernetes / Orchestrator        |
+------------------------------------------+
|     Cloud-Infrastruktur (AWS, Azure)     |
+------------------------------------------+

## Quellen

- [Cloud Native Computing Foundation (CNCF)](https://www.cncf.io/)  
  Offizielle Organisation hinter Kubernetes, Prometheus, Envoy, OpenTelemetry u.v.m.

- [Was ist Cloud Native? – Red Hat](https://www.redhat.com/de/topics/cloud-native-apps)  
  Übersichtlicher Einstieg in das Thema aus Unternehmensperspektive.

- [Kubernetes Documentation](https://kubernetes.io/docs/)  
  Offizielle Dokumentation zu Kubernetes, dem wichtigsten Orchestrierungstool.

- [Docker Dokumentation](https://docs.docker.com/)  
  Alles rund um Containerisierung mit Docker.

- [Prometheus Monitoring Doku](https://prometheus.io/docs/)  
  Technische Einführung in Prometheus und dessen Integration.

- [Terraform von HashiCorp](https://developer.hashicorp.com/terraform/docs)  
  Infrastruktur als Code – Offizielle Anleitung und Beispiele.

- [OpenTelemetry.io](https://opentelemetry.io/)  
  Homepage des Observability-Standards mit SDKs, Dokus und Beispielen.

- [Istio Service Mesh](https://istio.io/)  
  Dokumentation und Konzepte für das weitverbreitete Service Mesh.

- [GitLab CI/CD Dokumentation](https://docs.gitlab.com/ee/ci/)  
  Anleitung zur Einrichtung von Pipelines und Automatisierungen mit GitLab.

- [Cloud Native Landscape (CNCF Landscape)](https://landscape.cncf.io/)  
  Interaktive Übersicht aller CNCF-Projekte, Tools und Anbieter.

- [Google Cloud – Was ist Cloud Native?](https://cloud.google.com/learn/what-is-cloud-native)  
  Einführung und Hintergrundwissen aus Sicht eines Cloud Providers.

