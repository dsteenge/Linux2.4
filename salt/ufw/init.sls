ufw:
  pkg:
    - installed

/etc/ufw/user.rules:
  file.managed:
    - source: salt://configs/ufwconf
    - user: root
    - group: root
    - mode: 777
    - template: jinja
    - defaults:
      master_ip: "@10.2.3.4"
