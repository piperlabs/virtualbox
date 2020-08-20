eth=$(/sbin/ifconfig {{ .product.ifname }} | grep 'inet ' | tr -s ' ' | cut -d' ' -f3)
cat <<EOF >>/etc/hosts
$eth {{ .host.name }}
EOF
