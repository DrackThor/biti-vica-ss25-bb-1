# Worum handelt es sich bei dem Begriff „Performance Impact with Virtualization“?

„Performance Impact with Virtualization“ beschreibt die Auswirkungen von Virtualisierung auf die Systemleistung. Virtualisierung ermöglicht das gleichzeitige Ausführen mehrerer Betriebssysteme auf einer physischen Maschine – dies kann jedoch Leistungseinbußen mit sich bringen, z. B. durch zusätzliche Overheads, Ressourcenwettbewerb oder eingeschränkten Hardwarezugriff.

# In welchem Kontext wird der Begriff verwendet?
## In IT-Infrastrukturen (z. B. Rechenzentren, Cloud Computing)

- Bei Server-Konsolidierung und Ressourcenmanagement

- Im Rahmen von Performance-Tuning und Systemoptimierung

- In Sicherheits- und Hochverfügbarkeitsarchitekturen

- Im DevOps-Umfeld bei der Verwendung von Containern & virtuellen Maschinen (VMs)

# (Grobe) technische Funktionsweise

- ## Virtualisierungsschichten:

	1. Hardware: Physische Server/CPU/RAM/Festplatte

	2. Hypervisor (Virtual Machine Monitor – VMM): Vermittelt zwischen Hardware und virtuellen Maschinen

	3. Virtuelle Maschinen (VMs): Software-emulierte Computer mit eigenem Betriebssystem

![[Pasted image 20250507193440.png]]

- ## Zentrale Funktionsweise:

	1. Hypervisor verwaltet Ressourcenverteilung (CPU, RAM, I/O)

	2. VMs teilen sich die Hardware

	3. Performance-Overhead entsteht z. B. durch:

		- Emulierte Hardwarezugriffe

		- Zusätzliche Kontextwechsel

		- RAM- und CPU-Overcommitment

# Gängige Protokolle, Produkte & Tools

<table>
  <thead>
    <tr>
      <th>Kategorie</th>
      <th>Beispiele</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Hypervisoren</td>
      <td>VMware ESXi, Microsoft Hyper-V, KVM (Linux), Xen</td>
    </tr>
    <tr>
      <td>Management-Tools</td>
      <td>vSphere, Proxmox, oVirt, Virt-Manager</td>
    </tr>
    <tr>
      <td>Container-Alternativen</td>
      <td>Docker, Kubernetes (K8s)</td>
    </tr>
    <tr>
      <td>Monitoring & Performance Tools</td>
      <td>Grafana, Prometheus, Zabbix, Nagios, top, htop, iostat</td>
    </tr>
  </tbody>
</table>

# Typische Performance-Einbußen

<table>
  <thead>
    <tr>
      <th>Bereich</th>
      <th>Möglicher Impact</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>CPU</td>
      <td>Scheduler-Overhead, weniger direkter Hardwarezugriff</td>
    </tr>
    <tr>
      <td>RAM</td>
      <td>Overcommitment → Swapping</td>
    </tr>
    <tr>
      <td>I/O (Storage)</td>
      <td>Shared Disks → Latenzen</td>
    </tr>
    <tr>
      <td>Netzwerk</td>
      <td>Virtuelle NICs langsamer als physische</td>
    </tr>
  </tbody>
</table>

# Architektur / Visualisierung

## Einordnung der Performance-Einbußen:

- Zwischen den VMs und der physischen Hardware liegt der Hypervisor, der notwendige Steuerung, aber auch Overhead einführt.

- Je mehr VMs, desto stärker der potenzielle Einfluss auf CPU, RAM und I/O.
# Fazit
Virtualisierung bringt viele Vorteile wie Skalierbarkeit, Flexibilität und Ressourcennutzung – aber auf Kosten von Performance. Je nach Einsatzszenario (z. B. Entwicklung vs. Hochleistungsdatenbank) muss sorgfältig abgewogen werden, ob der Performanceverlust tragbar ist oder Optimierungen notwendig sind (z. B. durch bessere Hardware oder Containerisierung).