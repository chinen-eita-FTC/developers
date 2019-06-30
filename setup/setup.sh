#!/bin/bash
sudo systemctl stop firewalld
sudo sysctl -w vm.max_map_count=262144