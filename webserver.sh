#!/bin/bash

# instalacao do Apache

yum -y update && yum -y install httpd

# altera a pagina inicial

cat <<EOF > /var/www/html/index.html
<html>
<body>
<h1>Servidor $(hostname)</h1>
</body>
</html>
EOF

# inicio automatico do Apache
systemctl enable httpd
systemctl start httpd

