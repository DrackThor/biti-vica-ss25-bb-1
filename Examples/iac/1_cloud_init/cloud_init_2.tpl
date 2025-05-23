#cloud-config
groups:
    - dummies
users:
  - name: dummy
    groups: sudo,dummies
    shell: /bin/bash
    sudo: ['ALL=(ALL) NOPASSWD:ALL']
    passwd: "$6$rounds=4096$85vhbIa5NSlmWEAr$rngCX2Fv5PzBSbENKRlb7EuXLXucAbrHkSAxzOjVwK6p1lLnD90eJd6ieF93fxZhZGe4TNE1VtRxw6R9uBr64."
  - name: ubuntu
    groups: sudo
    shell: /bin/bash
    sudo: ['ALL=(ALL) NOPASSWD:ALL']
    ssh_authorized_keys: ${ssh_key}

write_files:
  - path: /home/dummy/hello.txt
    content: |
      Hello, newuser!
      This file was created by cloud-init.
    permissions: '0644'

runcmd:
  - echo "$(date) new line" >> /home/dummy/hello.txt
