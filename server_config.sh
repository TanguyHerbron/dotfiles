#!/bin/bash

useradd -r backup

groupadd dev
usermod -aG dev $USER
usermod -aG dev backup
