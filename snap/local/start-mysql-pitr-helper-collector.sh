#!/bin/bash

# For security measures, applications should not be run as sudo.
# Execute mysqlsh as the non-sudo user: snap-daemon.
exec "${SNAP}/usr/bin/setpriv" \
  --clear-groups \
  --reuid snap_daemon \
  --regid snap_daemon \
  -- \
  "${SNAP}/usr/bin/mysql-pitr-helper" \
  collect \
  "${SNAP_DATA}/etc/mysql-pitr-helper-collector.yaml"
