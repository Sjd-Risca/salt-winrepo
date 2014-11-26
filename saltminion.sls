saltminion:
  2014.7.0:
{% if grains['cpuarch'] == 'AMD64' %}
    installer: 'http://docs.saltstack.com/downloads/Salt-Minion-2014.7.0-AMD64-Setup.exe'
{% else %}
    installer: 'http://docs.saltstack.com/downloads/Salt-Minion-2014.7.0-x86-Setup.exe'
{% endif %}
    full_name: 'Saltminion'
    reboot: False
    install_flags: ' /master=cloud.risca.eu /minion-name={{grains['host']}} '
    msiexec: True
#    uninstaller: 'http://mirror.catn.com/pub/tdf/libreoffice/stable/4.2.1/win/x86/LibreOffice_4.2.1_Win_x86.msi'
    uninstall_flags: ' /qn'

