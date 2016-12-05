#! /bin/bash
wget -P /usr/local/bin/ https://raw.githubusercontent.com/kidandcat/log2iptables/master/log2iptables.sh
(crontab -l 2>/dev/null; echo "*/5 * * * * /usr/local/bin/log2iptables.sh -x 1 -f /var/log/auth.log -r "sshd.*(f|F)ail.*(\=| )([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})" -p 3 -l 5 -m "kidandcat@gmail.com" -M "noreply@galax.be" > /dev/null 2>&1") | crontab -
