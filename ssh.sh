#! /bin/bash
wget -P /usr/local/bin/ https://cdn.rawgit.com/kidandcat/log2iptables/63b1317676a4a4c4ecf0441f81cb795087b8d398/log2iptables.sh
chmod +x /usr/local/bin/log2iptables.sh
(crontab -l 2>/dev/null; echo "*/5 * * * * /usr/local/bin/log2iptables.sh -x 1 -f /var/log/auth.log -r \"sshd.*(f|F)ail.*(\=| )([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})\" -p 3 -l 5 -u 1 -U http://ip-blacklist.info/ip/post > /dev/null 2>&1") | crontab -
