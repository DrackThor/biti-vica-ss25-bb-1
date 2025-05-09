# Full Virtualisation vs. Paravirtualisation

## Einleitung

Virtualisierung ist ein zentrales Element moderner IT-Infrastrukturen. Sie ermöglicht es, mehrere Betriebssysteme und Anwendungen gleichzeitig auf einer einzigen physischen Maschine zu betreiben. Zwei grundlegende Virtualisierungsmethoden sind Full Virtualisation und Paravirtualisation. Diese Ausarbeitung erklärt beide Konzepte, vergleicht ihre Funktionsweisen und zeigt typische Einsatzbereiche.

---

## Full Virtualisation

### Begriffserklärung

Full Virtualisation (vollständige Virtualisierung) bezeichnet die Technik, bei der ein Gastbetriebssystem vollständig von der zugrunde liegenden Hardware abstrahiert wird. Das Betriebssystem wird nicht modifiziert und läuft so, als ob es direkt auf realer Hardware betrieben würde.

### Technischer Kontext

Full Virtualisation wird typischerweise in Cloud-Umgebungen, Testinfrastrukturen und Enterprise-Rechenzentren verwendet. Sie bietet maximale Kompatibilität, da das Gastsystem keine Kenntnis davon hat, dass es virtualisiert ist.

### Funktionsweise

Ein sogenannter Hypervisor (z. B. VMware ESXi oder Microsoft Hyper-V) übernimmt die Virtualisierung der Hardware. Kritische CPU-Instruktionen, die nicht direkt virtualisiert werden können, werden abgefangen und simuliert. Moderne Prozessoren (Intel VT-x, AMD-V) unterstützen diese Technik durch spezielle Erweiterungen.

### Bekannte Tools und Produkte

- **VMware ESXi**
- **Microsoft Hyper-V**
- **KVM (Kernel-based Virtual Machine)**
- **QEMU (mit KVM)**

---

## Paravirtualisation

### Begriffserklärung

Paravirtualisation ist ein Ansatz, bei dem das Gastbetriebssystem angepasst wird, um sich der Virtualisierungsumgebung bewusst zu sein. Es verwendet spezielle Schnittstellen (Hypercalls), um mit dem Hypervisor zu kommunizieren.

### Technischer Kontext

Diese Technik wird dort eingesetzt, wo maximale Performance und Kontrolle über das Gastsystem erforderlich sind – etwa in hochoptimierten Cloud-Umgebungen oder bei speziellen Appliance-Lösungen.

### Funktionsweise

Anstatt Hardware zu emulieren, stellt der Hypervisor eine API
