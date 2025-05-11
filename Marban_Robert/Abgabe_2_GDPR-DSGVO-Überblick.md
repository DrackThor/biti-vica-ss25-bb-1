# GDPR / DSGVO – Ausführlicher Überblick

## 1. Was ist GDPR / DSGVO?  
Die **General Data Protection Regulation (GDPR)**, in Deutschland bekannt als **Datenschutz-Grundverordnung (DSGVO)**, ist seit Mai 2018 in Kraft und vereinheitlicht den Schutz personenbezogener Daten in der EU. Sie ersetzt nationale Regelungen und definiert verbindliche Prinzipien, Rechte und Pflichten.

- **Geltungsbereich:**  
  - Alle EU-Mitgliedstaaten  
  - Externe Dienstleister mit Verarbeitung von EU‐Bürger-Daten  
- **Schlüsselprinzipien:**  
  - **Rechtmäßigkeit, Verarbeitung nach Treu und Glauben, Transparenz**  
  - **Zweckbindung & Datenminimierung**  
  - **Integrität & Vertraulichkeit**  
  - **Rechenschaftspflicht (Accountability)**  
- **Bußgelder:** Bis zu 20 Mio € oder 4 % des weltweiten Jahresumsatzes

---

## 2. Kontext und Anwendungsbereiche  
1. **Unternehmen & Organisationen**  
   - Kunden- und Mitarbeitenden-Daten in CRM, HR-Systemen  
2. **Öffentliche Stellen**  
   - Meldeämter, Sozialbehörden, Polizei  
3. **Online-Dienste & Plattformen**  
   - Cookies & Tracking, Benutzerkonten, E-Commerce  
4. **Forschung & Wissenschaft**  
   - Probanden-Studien, Biobanken, klinische Register  

---

## 3. Rechte der Betroffenen (Art. 15–22 DSGVO)  
1. **Auskunftsrecht (Art. 15):** Wer, was, warum?  
   - Beispiel: Online-Portal zeigt alle gespeicherten Daten an  
2. **Recht auf Berichtigung (Art. 16):** Fehler korrigieren lassen  
3. **Recht auf Löschung (Art. 17, «Recht auf Vergessenwerden»)**  
4. **Recht auf Einschränkung der Verarbeitung (Art. 18)**  
5. **Recht auf Datenübertragbarkeit (Art. 20):** Daten JSON/CSV-Export  
6. **Widerspruchsrecht (Art. 21):** z. B. gegen Direktwerbung  
7. **Automatisierte Entscheidungen & Profiling (Art. 22)**  

---

## 4. Verantwortlichkeiten & Rollen  
- **Verantwortlicher (Controller):** Entscheidet über Zwecke & Mittel  
- **Auftragsverarbeiter (Processor):** Führt Verarbeitung im Auftrag durch (Art. 28)  
- **Datenschutzbeauftragter (DPO):**  
  - Überwachung der DSGVO-Einhaltung  
  - Schnittstelle zur Aufsichtsbehörde  
- **Privacy Champions:** Fachbereichs-Ansprechpartner für Datenschutz

---

## 5. Datenschutz-Folgenabschätzung (DPIA, Art. 35)  
- **Wann:** Hohe Risiken (z. B. Video-Monitoring, Gesundheitsdaten)  
- **Ablauf:**  
  1. **Screening:** Ist DPIA nötig?  
  2. **Beschreibung:** Verarbeitung, Zweck, Systemarchitektur  
  3. **Risikoanalyse:** Eintrittswahrscheinlichkeit & Auswirkungen  
  4. **Maßnahmenplan:** Technisch-organisatorische Maßnahmen  
  5. **Dokumentation & Genehmigung**  

**Beispiel:** DPIA für mobil-gestützte Erhebung von Patientendaten

---

## 6. Prozesse bei Datenschutz-Verstößen  
1. **Meldepflicht (Art. 33):**  
   - Binnen 72 Std. an Aufsichtsbehörde  
   - Inhalt: Art, Umfang, Betroffene, Folgen, Abhilfe  
2. **Benachrichtigung der Betroffenen (Art. 34):**  
   - Bei hohem Risiko für Betroffene  
3. **Interne Untersuchung & Korrekturmaßnahmen**  
4. **Lessons Learned & Reporting**

---

## 7. Technischer Überblick der Funktionsweise  

### 7.1 Privacy by Design & Default  
- **By Design:** Datenschutz bereits in Architektur integrieren  
- **By Default:** Höchster Datenschutzniveau als Voreinstellung  

### 7.2 Datenlebenszyklus  
Erhebung → Speicherung → Verarbeitung → Weitergabe → Löschung

- **Erhebung:** Consent-Log, Opt-in/Opt-out
- **Speicherung:** Verschlüsselung „at rest“, Zugriffsprotokolle
- **Verarbeitung:** Pseudonymisierung, rollenbasierte Zugriffe
- **Weitergabe:** AV-Verträge, EU-Standardklauseln
- **Löschung:** Automatische Workflows, Archivierung

### 7.3 Technische Datenschutz-Bausteine  
| Baustein               | Zweck                                  |
|------------------------|----------------------------------------|
| TLS / HTTPS            | Sichere Übertragung                    |
| OAuth2 / OpenID Connect| Authentifizierung & Autorisierung      |
| AES / RSA              | Verschlüsselung “at rest”              |
| HSM                    | Sichere Schlüsselspeicherung          |
| SIEM / Logging         | Lückenlose Protokollierung & Monitoring|

---

## 8. Gängige Protokolle, Produkte & Tools  
| Kategorie                  | Tool / Protokoll        | Beschreibung                              |
|----------------------------|-------------------------|-------------------------------------------|
| **Identität & Zugriff**    | OAuth2, SAML, OpenID    | Single-Sign-On, Rechteverwaltung           |
| **Verschlüsselung**        | TLS, AES, RSA           | Transport- & Speicherverschlüsselung      |
| **Datenschutz-Management** | OneTrust, TrustArc      | Consent Management, DPIA-Workflows         |
| **Anonymisierung**         | ARX, sdcMicro           | Statistische Anonymisierung                |
| **Audit & Monitoring**     | Splunk, ELK Stack       | Log-Aggregation, SIEM                      |

---

## 9. Zusammenfassung  
Die DSGVO ist der zentrale Rechtsrahmen zum Schutz personenbezogener Daten in der EU.
**Betroffenenrechte** (Auskunft, Löschung, Übertragbarkeit) und **Pflichten** (Privacy by Design, DPIA) stehen im Mittelpunkt.
Technisch erfolgt Datenschutz über **Verschlüsselung, Pseudonymisierung, Consent-Logs** und **strikte Zugriffskontrollen**.
**Tools** wie OneTrust (Consent) und Splunk (Monitoring) sowie Protokolle wie TLS und OAuth2 unterstützen Compliance.
Praxisbeispiele zeigen die Umsetzung im E-Commerce und im Gesundheitsbereich.

---

## Weiterführende Links
-- EUR-Lex (DSGVO-Verordnung)
   https://eur-lex.europa.eu/legal-content/DE/TXT/?uri=celex%3A32016R0679
   
-- EDPB Leitlinien
   https://edpb.europa.eu/edpb_de
