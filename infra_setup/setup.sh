#/bin/bash
apt-get update
apt-get install quagga quagga-doc
cp /usr/share/doc/quagga/examples/zebra.conf.sample /etc/quagga/zebra.conf
cp /usr/share/doc/quagga/examples/bgpd.conf.sample /etc/quagga/bgpd.conf
cp /usr/share/doc/quagga/examples/vtysh.conf.sample /etc/quagga/vtysh.conf
chown quagga.quaggavty /etc/quagga/*.conf
chmod 640 /etc/quagga/*.conf
echo "1" > /proc/sys/net/ipv4/ip_forward 
echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf

