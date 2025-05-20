# Role-Based Access Control (RBAC)

## Worum handelt es sich bei dem Begriff?

Role-Based Access Control, kurz RBAC, ist ein Sicherheitsmodell, das regelt, wer in einem IT-System auf welche Daten oder Funktionen zugreifen darf. Dabei erhalten Personen nicht direkt Rechte, sondern diese werden ueber sogenannte Rollen zugewiesen. Eine Rolle steht dabei fuer eine Funktion, eine Aufgabe oder eine Position, wie zum Beispiel 'HR-Mitarbeiter' oder 'IT-Administrator'. Wer eine bestimmte Rolle erhaelt, bekommt automatisch alle zugehoerigen Zugriffsrechte.

Diese indirekte Rechtevergabe ueber Rollen sorgt dafuer, dass Berechtigungen zentral, nachvollziehbar und einheitlich vergeben werden. Besonders in groesseren Organisationen ist das ein grosser Vorteil, da dort viele Personen mit sehr unterschiedlichen Aufgaben auf Systeme und Informationen zugreifen muessen. Im Vergleich zu aelteren Ansaetzen wie der Discretionary Access Control (DAC), bei der Nutzer teilweise selbst Rechte vergeben konnten, schafft RBAC klare, pruefbare Strukturen.

RBAC ist somit weit mehr als nur eine Technik zur Zugriffskontrolle. Es ist ein zentrales Element moderner IT-Sicherheitsstrategien, das auch fuer Governance, Datenschutz und die Einhaltung von Vorgaben von entscheidender Bedeutung ist.

## In welchem Kontext wird der Begriff verwendet?

RBAC kommt in nahezu allen Branchen zum Einsatz, in denen strukturierter und kontrollierter Zugriff auf IT-Systeme notwendig ist. Dazu gehoeren Unternehmen, Behoerden, Kliniken, Banken, Bildungseinrichtungen und Cloud-Anbieter. ueberall dort, wo unterschiedliche Benutzergruppen mit spezifischen Aufgaben auf IT-Systeme zugreifen, hilft RBAC, die Zugriffe gezielt zu steuern.

Typische Einsatzszenarien:

- In einem Unternehmen greifen Buchhaltung, Personalabteilung und IT auf unterschiedliche Daten zu, dabei darf es keine ueberschneidungen geben.
- In einem Krankenhaus duerfen aerzte auf medizinische Daten zugreifen, nicht aber Verwaltungsangestellte.
- In Cloud-Umgebungen wie AWS oder Azure wird geregelt, wer auf virtuelle Maschinen, Datenbanken oder Netzwerkkonfigurationen zugreifen darf.
- In Universitaeten erhalten Studierende, Dozierende und die Verwaltung abgestufte Rechte auf Lernplattformen und interne Systeme.

Auch bei IT-Audits und Compliance-Pruefungen ist RBAC von zentraler Bedeutung, etwa zur Einhaltung der DSGVO, ISO-Standards oder branchenspezifischer Gesetze wie HIPAA oder SOX. Es gilt stets der Grundsatz: Nur wer wirklich berechtigt ist, darf auf sensible Daten zugreifen und dieser Zugriff muss dokumentiert und pruefbar sein.

## (grobe) technische Funktionsweise

Ein Beispiel: Ein Nutzer wird einer Rolle zugewiesen, diese Rolle hat bestimmte Rechte, und daraus ergibt sich, was der Nutzer im System tun darf. 

### Das kann in vier zentrale Elemente gegliedert werden:

- **Benutzer** Jede Person, die auf ein System zugreift, hat eine individuelle Identitaet, z.b.: 'Max Mustermann'.
- **Rollen** Rollen beschreiben Funktionen oder Aufgabenbereiche, etwa 'Vertrieb', 'Systemadministrator' oder 'Sachbearbeitung HR'.
- **Berechtigungen** Dies sind konkrete Rechte wie 'Dateien lesen', 'Benutzerkonten verwalten' oder 'Systemkonfiguration aendern'.
- **Ressourcen** Die Objekte, auf die zugegriffen wird, also z.b.: Datenbanken, Anwendungen, Netzlaufwerke oder APIs.

Zuweisungsprinzip:
- Der Benutzer bekommt eine oder mehrere Rollen
- Die Rollen sind mit bestimmten Rechten verknuepft
- Daraus ergibt sich, auf welche Ressourcen der Benutzer zugreifen darf

Ein Beispiel aus der Praxis:

Ein Mitarbeiter in der Rolle 'Sachbearbeiter HR' hat Zugriff auf digitale Personalakten, das Zeiterfassungssystem und bestimmte interne Formulare. Gleichzeitig hat er keinen Zugang zu Buchhaltungsdaten oder Netzwerkeinstellungen, diese sind anderen Rollen vorbehalten.

### Weitere Funktionen von RBAC-Systemen:
- **Rollenhierarchien** Hoeherrangige Rollen koennen die Rechte untergeordneter Rollen beinhalten, zum Beispiel kann ein Teamleiter zusaetzlich zu den Rechten seiner Teammitglieder Genehmigungen erteilen.
- **Trennung von Aufgaben** Es wird verhindert, dass ein einzelner Nutzer widerspruechliche oder sicherheitskritische Rollen gleichzeitig erhaelt, z.b.: 'Zahlungsfreigabe' und 'Rechnungspruefung'.
- **Temporaere Rollen** Fuer Wartungsarbeiten, Projekte oder Notfaelle koennen Rollen mit Ablaufdatum vergeben werden, um den Zugriff zeitlich zu begrenzen.

In komplexen Umgebungen wird RBAC durch sogenannte Policy Engines technisch gesteuert. Diese pruefen bei jeder Zugriffsanfrage automatisch, ob der Nutzer ueber die passende Rolle und damit ueber die benoetigten Rechte verfuegt.

## gaengige Protokolle, Produkte und Tools

### Cloud-Plattformen und Identitaetsmanagement (IAM):

- **AWS IAM** Rollenbasierte Zugriffskontrolle auf Dienste, APIs und Ressourcen in Amazon Web Services.
- **Microsoft Azure** Ermoeglicht die Vergabe detaillierter Zugriffsrechte auf virtuelle Maschinen, Datenbanken, Netzwerke und mehr.
- **Google Cloud IAM** Stellt sicher, dass Nutzer in Google Cloud nur auf genehmigte Ressourcen zugreifen.
- **Auth0, Okta, Keycloak** Moderne Systeme zur Benutzerverwaltung und Single Sign-On mit rollenbasiertem Zugriff.

### Infrastruktur und Netzwerke:

- **Kubernetes RBAC** Steuerung des Zugriffs auf Container, Pods und Services in einer Kubernetes-Umgebung.
- **Cisco Nexus** Reglementieren den Zugriff auf Netzwerkressourcen anhand von Benutzerrollen.
- **Linux/Unix-Systeme** Sudo-Konfigurationen, SELinux oder AppArmor setzen rollenaehnliche Sicherheitsrichtlinien um.

### Datenbanken und Geschaeftsanwendungen:

- **PostgreSQL, SQL Server, Oracle DB** Bieten rollenbasierte Zugriffskontrolle auf Tabellen, Views, Funktionen und Daten.
- **SAP, Microsoft Dynamics** Grosse ERP-Systeme, in denen jede Nutzerrolle Zugriff auf bestimmte Module und Prozesse erhaelt.

### Wichtige Standards und Protokolle:

- **SAML 2.0** uebertraegt Rolleninformationen bei Single Sign-On ueber Domaenengrenzen hinweg.
- **OAuth 2.0 / OpenID Connect** Rollen werden im Token als sogenannte Claims uebertragen, zum Beispiel als role oder scope.
- **LDAP (Lightweight Directory Access Protocol)** Verwaltung von Gruppen und Rollen innerhalb eines zentralen Verzeichnisdienstes.

## ggf. Architektur/Schaubild/grafische Veranschaulichung

![RBAC Grafik](https://miro.medium.com/v2/resize:fit:640/format:webp/1*ub3g0nUC6NCkYPHoNB6rFw.png)
