#!/usr/bin/env bash

# Get cipher list
kinit
klist -e
kdestroy -q

# Create keytab
ktutil
> read_kt .keytab
# Get slot
> list
> delete_entry ${SLOT}
> add_entry -password -p ${PRINCIPAL} -k 1 -e ${CIPHER}
> write_kt .keytab.new
> quit

# Setup keytab
mv .keytab .keytab.old
mv .keytab.new .keytab
