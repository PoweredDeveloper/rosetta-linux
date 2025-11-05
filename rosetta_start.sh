#!/bin/sh
# Make sure Rosetta mount exists
sudo mkdir -p /opt/rosetta

# Mount if using virtiofs (if applicable)
sudo mount -t virtiofs rosetta /opt/rosetta 2>/dev/null || true

# Register your existing Rosetta with binfmt
sudo /usr/sbin/update-binfmts --install rosetta /opt/rosetta/rosetta \
     --magic "\x7f\x45\x4c\x46\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x3e\x00" \
     --mask "\xff\xff\xff\xff\xff\xfe\xfe\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfe\xff\xff\xff" \
     --credentials yes --preserve yes --fix-binary yes
