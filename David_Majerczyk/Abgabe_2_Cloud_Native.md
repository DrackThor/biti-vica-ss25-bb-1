Cloud Native
Was bedeutet „Cloud Native“?
„Cloud Native“ beschreibt einen modernen Ansatz zur Entwicklung und 
zum Betrieb von Software, der speziell für Cloud-Umgebungen konzipiert ist. 
Es geht dabei nicht nur darum, eine Anwendung irgendwie in der Cloud laufen zu lassen –
vielmehr nutzt man von Anfang an Technologien und Methoden,
die auf Skalierbarkeit, Flexibilität und Automatisierung ausgelegt sind.

In welchem Kontext wird der Begriff verwendet?
Der Begriff taucht oft auf, wenn es um moderne Softwareentwicklung geht – 
vor allem im Zusammenhang mit Microservices, Containerisierung, DevOps,
CI/CD (Continuous Integration/Continuous Deployment) und Plattformen wie AWS, Azure oder Google Cloud.

Cloud Native ist besonders relevant, wenn Anwendungen regelmäßig weiterentwickelt und schnell ausgeliefert werden sollen. 
Es wird z. B. eingesetzt bei:
	- Webanwendungen mit vielen Nutzer:innen
	- mobilen Apps (vor allem beim Backend)
	- datenintensiven Plattformen (z. B. Streaming, Analytics)

Technischer Überblick – Wie funktioniert das Ganze?
Cloud-Native-Anwendungen basieren meist auf folgenden Prinzipien:

	- Microservices(Die Anwendung besteht aus mehreren kleinen, eigenständigen Diensten.)
	- Containerisierung(Jeder Dienst läuft in einem isolierten Container, z. B. mit Docker.)
	- Orchestrierung(Container werden automatisch verwaltet, meist mit Kubernetes.)
	- CI/CD(Änderungen im Code werden automatisch gebaut, getestet und bereitgestellt.)

Beispiel: So sieht der Ablauf oft aus
Code wird in kleine Microservices aufgeteilt

Entwickler pushen Code in ein Git-Repository

Eine CI/CD-Pipeline baut die Container und testet sie

Die Container werden automatisch in der Cloud bereitgestellt

Monitoring-Tools beobachten die Anwendung im Betrieb


Welche Tools und Technologien werden verwendet?

Container
	Docker, 
	Podman
Orchestrierung
	Kubernetes, 
	OpenShift
CI/CD
	GitHub Actions, 
	GitLab CI, 
	Jenkins
Monitoring
	Prometheus, 
	Grafana
Service-Kommunikation
	Istio(Service Mesh), 
	Envoy Proxy

Dazu kommen häufig Protokolle wie HTTP/REST, gRPC (für schnelle Kommunikation zwischen Diensten) 
oder OpenTelemetry für Observability (also Überwachung, Logs, Tracing etc.).

Vorteile
	- Skalierbar: Anwendungen passen sich automatisch der Last an
	- Robust: Fehler in einem Dienst wirken sich nicht direkt auf andere aus
	- Schnellere Entwicklung: Neue Features können unabhängig deployed werden
	- Portabel: Container laufen in fast jeder Umgebung

Herausforderungen
	- Die Architektur ist komplexer als bei klassischen Monolithen
	- Entwickler:innen brauchen Know-how über Infrastruktur und Deployment
	- Die Sicherheitsanforderungen sind höher (z. B. bei der Kommunikation zwischen Diensten)

Fazit
Cloud Native ist kein Hype, sondern ein etablierter Standard, wenn es darum geht, moderne Anwendungen schnell und zuverlässig zu entwickeln. 
Wer sich mit Docker, Kubernetes und CI/CD auseinandersetzt, wird dem Begriff immer wieder begegnen – und verstehen, warum Cloud Native so wichtig ist.



Quellen
CNCF (Cloud Native Computing Foundation): https://cncf.io
Kubernetes Docs: https://kubernetes.io
Docker Docs: https://docs.docker.com
12-Factor App Prinzipien: https://12factor.net
