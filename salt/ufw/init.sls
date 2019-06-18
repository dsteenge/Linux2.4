ufw:
  pkg:
    - installed

/etc/ufw/user.rules:
  file.managed:
    - source: salt://ufw/user.rules
    - user: root
    - group: root
    - mode: 777
    - defaults:
      master_ip: "@10.2.3.4"
