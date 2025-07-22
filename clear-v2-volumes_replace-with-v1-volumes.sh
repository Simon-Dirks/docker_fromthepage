#!/bin/bash

# rm -r /var/lib/docker/volumes/docker_fromthepage_v2_fromthepage_config_v2
echo "Copying config (v1 -> v2)..."
cp -r /var/lib/docker/volumes/docker_fromthepage_fromthepage_config/_data /var/lib/docker/volumes/docker_fromthepage_v2_fromthepage_config_v2

echo "Removing v2 mysql volume..."
read -p "Are you sure? (y/n) " -n 1
if [[ $REPLY =~ ^[Yy]$ ]]; then
	rm -r /var/lib/docker/volumes/docker_fromthepage_v2_fromthepage_mysql_data_v2
	mkdir /var/lib/docker/volumes/docker_fromthepage_v2_fromthepage_mysql_data_v2
else
    echo "Operation cancelled."
    exit 1
fi

echo "Copying mysql volume (v1 -> v2)..."
cp -r /var/lib/docker/volumes/docker_fromthepage_fromthepage_mysql_data/_data /var/lib/docker/volumes/docker_fromthepage_v2_fromthepage_mysql_data_v2

echo "Copying public volume (v1 -> v2)..."
# rm -r /var/lib/docker/volumes/docker_fromthepage_v2_fromthepage_public_v2
cp -r -u -p /var/lib/docker/volumes/docker_fromthepage_fromthepage_public/_data /var/lib/docker/volumes/docker_fromthepage_v2_fromthepage_public_v2
