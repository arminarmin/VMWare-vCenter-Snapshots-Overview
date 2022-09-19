SELECT
  vpxv_vms.name as vm, snapshot_name, create_time, ( CAST(file_size as BIGINT) / 1024 ) || ' KB' as file_size, RIGHT(vpx_norm_vm_fle_file_info.name,5) as type
FROM
  vpxv_snapshot
INNER JOIN
  vpxv_vms
ON
  vpxv_snapshot.vm_id = vpxv_vms.vmid
INNER JOIN
  vpx_norm_vm_fle_file_info
ON
  vpx_norm_vm_fle_file_info.name LIKE ('%' || vpxv_vms.name || '%-Snapshot' || snapshot_uid || '.vmsn')
OR
  vpx_norm_vm_fle_file_info.name LIKE ('%' || vpxv_vms.name || '%-Snapshot' || snapshot_uid || '.vmem');
