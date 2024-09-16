#!/bin/bash
sudo docker compose down; sudo docker compose up -d; sudo docker logs docker_fromthepage_v2-fromthepage-1 -f
