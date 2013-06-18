#!/bin/bash
mysql -u root -p -e "DROP USER ''@'localhost'; DROP USER ''@'[__HOST__]';"