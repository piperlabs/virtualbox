nmcli connection add type ethernet con-name pipernet ifname {{ .product.ifname }}
eth=$(/sbin/ifconfig {{ .product.ifname }} | grep 'inet ' | tr -s ' ' | cut -d' ' -f3)
cat <<EOF >>/etc/hosts
$eth {{ .host.name }}
EOF
