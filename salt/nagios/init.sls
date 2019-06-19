'sudo apt-get update -y':
  cmd.run

'sudo apt-get install nagios-nrpe-server nagios-plugins -y':
  cmd.run




/etc/nagios/nrpe.cfg:
  file.managed:
    - source: salt://configs/nrpe.cfg
    - user: root
    - group: root
    - mode: 777

nagios:
  user.present:
    - uid: 
    - gid: 
    - empty_password: true

nagiosgroup:
  group.present:
    - gid: 7364
    - system: True
    - addusers:
      - nagios

'ufw allow 5666':
  cmd.run

'systemctl restart nagios-nrpe-server':
  cmd.run
