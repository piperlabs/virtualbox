cat <<EOF >/etc/netplan/02-netcfg.yaml;
network:
  version: 2
  ethernets:
    {{ .product.ifname }}:
      dhcp4: true
EOF
netplan apply
eth=$(/sbin/ifconfig {{ .product.ifname }} | grep 'inet ' | tr -s ' ' | cut -d' ' -f3)
cat <<EOF >>/etc/hosts
$eth {{ .host.name }}
EOF