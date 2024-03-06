;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     varona.com. root.varona.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.varona.com.
ns      IN      A       192.168.50.3
client  IN      A       192.168.50.2
server  IN      CNAME   ns
mail    IN      CNAME   ns
www     IN      CNAME   ns
parcial IN      CNAME   ns
