
# Role-Based Access Control (RBAC)

## Einleitung

In modernen IT-Systemen ist der Schutz sensibler Daten und Funktionen zentral. Eine der effektivsten und gleichzeitig übersichtlichsten Methoden zur Zugriffskontrolle ist **Role-Based Access Control** (RBAC), also rollenbasierte Zugriffskontrolle. RBAC ermöglicht es Organisationen, **Zugriffsrechte strukturiert, zentral und nachvollziehbar zu vergeben** – basierend auf den Aufgaben und Rollen der Benutzer.

---

## Was ist RBAC?

RBAC ist ein Zugriffsmodell, bei dem Berechtigungen nicht direkt einzelnen Benutzern, sondern **Rollen** zugewiesen werden. Eine **Rolle** repräsentiert dabei typischerweise eine bestimmte Funktion im Unternehmen, z. B. „Mitarbeiter“, „Teamleiter“, „Systemadministrator“ oder „Controller“.

Benutzer erhalten Zugriff auf Ressourcen, indem sie einer oder mehreren Rollen zugewiesen werden. Jede Rolle beinhaltet spezifische Berechtigungen – etwa zum Lesen, Schreiben, Löschen oder Verwalten von Daten oder Funktionen.

---

## Kontext & Anwendung

RBAC wird in verschiedensten IT-Umgebungen eingesetzt:

- **Unternehmen:** Rechtevergabe in ERP-Systemen, Dokumentenmanagement, Personalsoftware  
- **Cloud-Plattformen:** Zugriff auf Dienste und Ressourcen durch vordefinierte Rollen  
- **Betriebssysteme:** Unix-Gruppen, `sudo`, Active Directory-Gruppen  
- **Netzwerkgeräte & Firewalls:** Rollen für Administration, Monitoring oder Support  
- **Container & Microservices:** Kubernetes-RBAC für API-Zugriffe und Berechtigungsmodelle  

Das Modell eignet sich besonders für Organisationen mit vielen Benutzern und klaren Aufgabenverteilungen. Durch die Trennung von Benutzer und Berechtigung bietet RBAC sowohl Sicherheit als auch Effizienz.

---

## Technische Funktionsweise

RBAC basiert auf einem **dreistufigen Modell**, bei dem **Benutzer**, **Rollen** und **Berechtigungen** logisch voneinander getrennt sind:

### Struktur:

- **Benutzer** erhalten keine direkten Berechtigungen.
- **Rollen** definieren bestimmte Rechte auf Ressourcen.
- **Berechtigungen** werden den Rollen zugewiesen.
- Benutzer erhalten durch ihre Rolle(n) Zugriff auf Ressourcen.

### Ablauf:

1. **Benutzer erstellen**  
   Jeder Benutzer wird im System als eigene Identität registriert.

2. **Rollen definieren**  
   Eine Rolle ist eine Sammlung von Berechtigungen. Beispiel:  
   - `Controller`: Darf Berichte lesen und exportieren  
   - `Admin`: Darf Benutzer verwalten und Systemeinstellungen ändern

3. **Rollen zuweisen**  
   Benutzer werden einer oder mehreren Rollen zugewiesen – z. B.:  
   - Lisa → `Controller`  
   - Tom → `Admin`, `Support`

4. **Zugriffskontrolle (Enforcement)**  
   Beim Zugriff auf ein System prüft das System automatisch:
   - Welche Rollen hat der Benutzer?
   - Welche Berechtigungen sind mit diesen Rollen verknüpft?
   - Ist die angeforderte Aktion erlaubt?

### Vorteile des Modells:

- **Zentral verwaltbar** – Änderungen an einer Rolle gelten für alle zugewiesenen Benutzer.
- **Skalierbar** – Neue Benutzer müssen nur Rollen erhalten.
- **Auditierbar** – Zugriffshistorie und Rollenvergabe sind nachvollziehbar.

---

## Vorteile von RBAC

- ✅ **Zentrale Kontrolle:** Rechte lassen sich effizient und konsistent verwalten  
- ✅ **Sicherheit:** Das Prinzip der minimalen Rechte (Least Privilege) wird einfach umsetzbar  
- ✅ **Skalierbarkeit:** Neue Benutzer müssen nur Rollen zugewiesen bekommen  
- ✅ **Transparenz:** Klar nachvollziehbar, wer was darf – ideal für Audits  
- ✅ **Wartbarkeit:** Rollen lassen sich dokumentieren, testen und versionieren

---

## Herausforderungen & Best Practices

### Typische Probleme:

- Zu viele Rollen („Role Explosion“)  
- Überschneidungen und unklare Zuständigkeiten  
- Unzureichende Dokumentation  
- Rollen werden nicht regelmäßig überprüft

### Best Practices:

- Rollen strukturiert nach Abteilungen und Funktionen definieren  
- Naming-Convention (z. B. `FIN-LESEN`, `IT-ADMIN`) nutzen  
- Rollenzuordnungen regelmäßig kontrollieren  
- Keine direkten Rechte auf Benutzer vergeben

---

## Beispielhafte Darstellung

```plaintext
[ Benutzer: Anna ]
     ↓
[ Rolle: Personalabteilung ]
     ↓
[ Rechte: Lesezugriff auf Personaldaten, Bearbeitung von Urlaubsanträgen ]
```

In komplexeren Systemen wie Kubernetes oder Cloud-Plattformen werden diese Rollen durch YAML- oder JSON-Dateien definiert und über APIs oder Management-Tools verwaltet.

---

## RBAC vs. ABAC

| Merkmal          | RBAC (Role-Based)                   | ABAC (Attribute-Based)                    |
|------------------|-------------------------------------|------------------------------------------|
| Grundlage        | Rollen                              | Attribute (z. B. Ort, Zeit, Benutzerstatus) |
| Komplexität      | Gering                              | Hoch                                     |
| Flexibilität     | Mittel                              | Hoch                                     |
| Umsetzung        | Standardisiert                      | Dynamisch, kontextabhängig               |
| Einsatzgebiet    | Unternehmens-IT, Cloud, Datenbanken | Zero Trust, Cloud-native, SaaS-Systeme   |

**Fazit:** ABAC ist flexibler, aber schwerer zu implementieren. RBAC bleibt der bewährte Standard in klassischen IT-Infrastrukturen.

---

## Tools & Plattformen mit RBAC-Unterstützung

- **Kubernetes** – Rollen mit `Role`/`ClusterRole` + Bindings  
- **Linux/Unix** – Gruppen, `sudo`, PAM  
- **Microsoft Active Directory** – Gruppenrichtlinien und Rollen  
- **Azure / AWS / Google Cloud** – IAM-Services mit rollenbasierter Zugriffskontrolle  
- **PostgreSQL / Oracle / SQL Server** – Rollen- und Rechteverwaltung in DBMS  

---

## Quellen

- [IBM – Was ist RBAC?](https://www.ibm.com/de-de/think/topics/rbac)  
- [Microsoft – Benutzerdefinierte Rollen in Azure RBAC](https://learn.microsoft.com/de-de/entra/identity/role-based-access-control/custom-overview)
