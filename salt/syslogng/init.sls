syslog-ng:
  pkg:
    - installed

/etc/syslog-ng/syslog-ng.conf:
  file.managed:
    - source: salt://configs/syslog-ng.conf
    - user: root
    - group: root
    - mode: 777
    - defaults:
      master_ip: "@10.2.3.4"

'ufw allow 514':
  cmd.run

'systemctl restart syslog-ng':
  cmd.run

