# Cloud-Init

## 1. Was ist Cloud-Init?

**Cloud-Init** ist ein Open-Source-Projekt, das zur Initialisierung von Cloud-Instanzen beim ersten Start dient. Es handelt sich um ein Tool, das automatisch Konfigurationen vornimmt, sobald eine neue virtuelle Maschine (VM) oder Instanz in einer Cloud-Umgebung provisioniert wird.

Cloud-Init wird hauptsächlich in Linux-Images verwendet, um Systeme bei der ersten Boot-Sequenz nach dem Deployment automatisch zu konfigurieren. Es ist besonders verbreitet in öffentlichen Cloud-Umgebungen wie AWS, Azure, Google Cloud, OpenStack und weiteren.

---

## 2. Kontext der Verwendung

Cloud-Init kommt in **Infrastructure as a Service (IaaS)**-Umgebungen zum Einsatz, wenn neue VMs auf Basis vordefinierter Images gestartet werden. Diese Images enthalten Cloud-Init als vorinstallierte Software.

Beispiele für Konfigurationen, die Cloud-Init beim Booten durchführt:

- Setzen von Hostname und Zeitzone
- Einfügen von SSH-Schlüsseln
- Installation von Paketen
- Ausführen von Shell-Skripten
- Einrichten von Benutzern und Gruppen
- Mounten von Volumes

Dies ist insbesondere für automatisierte Deployments nützlich, bei denen hunderte oder tausende Instanzen automatisch gestartet und konfiguriert werden müssen.

---

## 3. Technische Funktionsweise

### Ablauf beim Starten einer Instanz:

1. **Boot der VM:** Das Betriebssystem wird gestartet.
2. **Cloud-Init wird aufgerufen:** Während des Boot-Prozesses startet `cloud-init` automatisch.
3. **Datenquellenabfrage:** Cloud-Init ruft sogenannte **Metadata Services** der Cloud-Plattform ab (z. B. AWS EC2 Metadata Service).
4. **Ausführung von Konfigurationsstufen:**

Cloud-Init gliedert sich in mehrere Phasen:

- `init`: Erkennung der Cloud-Umgebung und Lesen der Metadaten
- `config`: Anwenden der benutzerdefinierten Konfiguration
- `final`: Ausführen benutzerdefinierter Skripte

### Beispielhafte User-Data-Konfiguration (YAML):

```yaml

#cloud-config
hostname: beispiel-host
users:
  - name: max
    groups: sudo
    shell: /bin/bash
    ssh-authorized-keys:
      - ssh-rsa AAAAB3...
packages:
  - nginx
runcmd:
  - systemctl start nginx

```

## 4. Gängige Datenquellen, Protokolle, Tools

### Datenquellen

Cloud-Init unterstützt viele Cloud-spezifische Metadatenquellen. Diese werden in der Regel über eine lokale Netzwerkadresse (`169.254.169.254`) bereitgestellt und enthalten Informationen wie SSH-Schlüssel, Hostname oder Benutzerdaten.

| **Cloud-Anbieter**   | **Datenquelle**                                        | **Dokumentation**                                                                                                                                                   |
|----------------------|--------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| AWS                  | `http://169.254.169.254/latest/meta-data`              | [AWS Docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)                                                                          |
| Azure                | `http://169.254.169.254/metadata`                      | [Azure Docs](https://learn.microsoft.com/en-us/azure/virtual-machines/instance-metadata-service)                                                                    |
| Google Cloud         | `http://metadata.google.internal`                      | [GCP Docs](https://cloud.google.com/compute/docs/storing-retrieving-metadata)                                                                                       |
| OpenStack            | ConfigDrive oder HTTP Metadata                         | [OpenStack Docs](https://docs.openstack.org/nova/latest/user/metadata.html)                                                                                         |
| VMware vSphere       | OVF Environment                                        | [VMware Docs](https://docs.vmware.com/en/VMware-Cloud-Director/10.2/VMware-Cloud-Director-Install-Configure-Upgrade/GUID-0165B360-3F4C-4C76-8D5A-8972A3D3E6F2.html) |

> Hinweis: Die IP `169.254.169.254` ist eine sogenannte "Link-Local"-Adresse, die innerhalb einer VM automatisch erreichbar ist – unabhängig von externer Netzwerkkonfiguration.

---

### Tools

Cloud-Init bringt mehrere nützliche Tools mit, die beim Debuggen oder der Analyse helfen:

- **`cloud-init analyze`**  
  Analysiert den Ablauf der Cloud-Init-Ausführung (z. B. Dauer einzelner Phasen).

- **`cloud-init status`**  
  Zeigt den aktuellen Status oder das Ergebnis der letzten Initialisierung.

- **`cloud-init clean`**  
  Setzt alle Cloud-Init-Daten zurück – hilfreich bei der Vorbereitung eines Images für neue Instanzen.


## 5. Architektur

+-----------------------+
| Cloud Provider (z.B.  |
| AWS, Azure, GCP)      |
| stellt Metadata bereit|
+----------+------------+
           |
           v
+---------------------------+
| Cloud-Init (VM-Seite)     |
|                           |
| 1. init   -> Datenquelle  |
| 2. config -> cloud-config |
| 3. final  -> Skripte usw. |
+---------------------------+
           |
           v
+---------------------------+
| VM ist vollständig        |
| konfiguriert              |
+---------------------------+


## 6. Zusammengefasst

Cloud-Init ist ein zentrales Tool in der Cloud-Automatisierung. Es ermöglicht deklarative Konfigurationen beim Boot-Prozess und ist essenziell für skalierbare Infrastruktur. Das Verständnis von Cloud-Init hilft bei der Automatisierung, dem DevOps-Prozess und dem effizienten Management großer Systemlandschaften.


## 7. Quellen

[Cloud-Init-Readthedocs](https://cloudinit.readthedocs.io)

[Ubuntu Documentation](https://documentation.ubuntu.com/lxd/latest/cloud-init/)

[AWS Userguide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html)

