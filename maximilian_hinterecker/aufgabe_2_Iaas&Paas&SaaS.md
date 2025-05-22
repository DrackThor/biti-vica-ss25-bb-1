# IaaS / PaaS / SaaS – Servicemodelle im Cloud Computing

## 1. Einleitung

- **IaaS – Infrastructure as a Service**
- **PaaS – Platform as a Service**
- **SaaS – Software as a Service**

Diese Modelle unterscheiden sich in ihrem Abstraktionsgrad und der Verantwortungsteilung zwischen Anbieter und Nutzer. Sie ermoeglichen es Unternehmen, je nach Bedarf Flexibilitaet, Skalierbarkeit und Kosteneffizienz zu erreichen.

---

## 2. Begriffsdefinition und Abgrenzung

### 2.1 IaaS – Infrastructure as a Service

Bei IaaS stellt der Cloud-Anbieter grundlegende IT-Infrastrukturkomponenten bereit, wie virtuelle Maschinen (VMs), Speicher, Netzwerke und Firewalls. Nutzer verwalten Betriebssysteme und Anwendungen selbst.

**Typische Eigenschaften:**
- Skalierbare Rechen- und Speicherressourcen
- Hohe Kontrolle ueber das System

**Beispiel:** Amazon EC2, Microsoft Azure Virtual Machines, Google Compute Engine

---

### 2.2 PaaS – Platform as a Service

PaaS geht einen Schritt weiter: Entwickler erhalten eine vollstaendige Plattform zur Entwicklung, Bereitstellung und Verwaltung von Anwendungen. Betriebssystem, Laufzeitumgebung, Middleware, Datenbanken und Tools werden vom Anbieter betrieben.

**Typische Eigenschaften:**
- Fokus auf die Anwendungsentwicklung
- Keine Sorge um Betriebssysteme oder Server

**Beispiel:** Google App Engine, Heroku, Azure App Service

---

### 2.3 SaaS – Software as a Service

SaaS ist das hoechste Abstraktionsniveau: Der Anbieter stellt eine vollstaendig nutzbare Software ueber das Internet bereit. Nutzer interagieren mit der Anwendung ueber Webbrowser, ohne sich um Installation oder Wartung kuemmern zu muessen.

**Typische Eigenschaften:**
- Sofort einsatzbereit
- Abonnement-basiertes Modell
- Ideal fuer Endnutzer und Geschaeftsanwendungen

**Beispiel:** Microsoft 365, Google Workspace

---

## 3. Technische Funktionsweise

### 3.1 IaaS – Infrastruktursteuerung

- Nutzer provisionieren virtuelle Maschinen (z. B. ueber Webportale oder APIs).
- Betriebssysteme und Anwendungen werden selbst installiert.
- Netzwerkinfrastruktur (Subnets, Load Balancer, Firewalls) wird ueber Tools wie Terraform konfiguriert.

**Technologien & Protokolle:**
- REST APIs
- Virtualisierung (z. B. mit KVM, Xen, Hyper-V)
- SSH, VPC (Virtual Private Cloud)

---

### 3.2 PaaS – Entwicklungsplattform

- Entwickler pushen Code (z. B. via Git), der automatisch in einer vorkonfigurierten Umgebung gebaut und deployt wird.
- Dienste wie Datenbanken, Warteschlangen oder Caching sind integrierbar.

**Technologien & Tools:**
- Containerisierung (Docker, Buildpacks)
- Kubernetes

---

### 3.3 SaaS – fertige Anwendungen

- Anwendungen laufen vollstaendig in der Cloud.
- Nutzer benoetigen lediglich Internetzugang und Webbrowser.
- Daten werden meist in der Cloud gespeichert (ggf. DSGVO-relevant).

**Schnittstellen & Protokolle:**
- HTTPS fuer Zugriff
- OAuth2, SAML fuer Authentifizierung

---

## 4. Vorteile & Nachteile der Modelle

| Modell | Vorteile | Nachteile |
|--------|----------|-----------|
| **IaaS** | Maximale Kontrolle, flexibel skalierbar | Hoher Verwaltungsaufwand, technische Komplexitaet |
| **PaaS** | Schnelle Entwicklung, Fokus auf Code | Weniger Kontrolle, Plattformabhaengigkeit (Lock-In) |
| **SaaS** | Einfach nutzbar, keine Wartung notwendig | Wenig Anpassbarkeit, Datenschutzrisiken |


