#!/bin/bash

# Apache Setup

yum -y update && yum -y install httpd

# Default homepage

cat <<EOF > /var/www/html/index.html
<html>
<body>
<h1>server: $(hostname)</h1>
</body>
</html>
EOF

# httpd service
systemctl enable httpd
systemctl start httpd

