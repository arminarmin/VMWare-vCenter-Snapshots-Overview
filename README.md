# VMWare-vCenter-Snapshots-Overview
Workaround to fetch an overview over all snapshots in a VMWare vCenter Instance

1. You need access to the vCenter Postgresql database. Create a read-only user to avoid damage to the database
2. You ask the database the query I shared
3. You get a merge between vms, snapshots and the datastore-files and their used space
4. I have set up a grafana instance, put the sql query in and got an overview over the vCenter snapshots and the space used by them
