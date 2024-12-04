#!/bin/bash

exec "${SNAP}/usr/bin/mysql-pitr-helper" \
    collect \
    "${SNAP_DATA}/etc/mysql-pitr-helper-collector.yaml"