virtual_machine="Linode Server 1"
snapshot_name="Base Install Only"

echo "Virtual Machine: ${virtual_machine}"
echo "Power off..."
VBoxManage controlvm "${virtual_machine}" poweroff
sleep 2
echo "Restore snapshop..."
VBoxManage snapshot "${virtual_machine}" restore "${snapshot_name}"
sleep 2
echo "Start..."
VBoxManage startvm "${virtual_machine}" --type gui
sleep 2
echo "Done."
