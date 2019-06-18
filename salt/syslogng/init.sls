syslog-ng:
  pkg:
    - installed

/etc/syslog-ng/syslog-ng.conf:
  file.managed:
    - source: salt://syslogng/syslog-ng.conf
    - user: root
    - group: root
    - mode: 777
    - defaults:
      master_ip: "@10.2.3.4"
