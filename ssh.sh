#! /bin/bash
wget -P /usr/local/bin/ https://cdn.rawgit.com/kidandcat/log2iptables/8639ae65a6b29c8936f32ed99d179e5d5b8f1b0c/log2iptables.sh
chmod +x /usr/local/bin/log2iptables.sh
(crontab -l 2>/dev/null; echo "*/5 * * * * /usr/local/bin/log2iptables.sh -x 1 -f /var/log/auth.log -r \"sshd.*(f|F)ail.*(\=| )([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})\" -p 3 -l 5 -u 1 -U http://ip-blacklist.info/ip/post > /dev/null 2>&1") | crontab -
