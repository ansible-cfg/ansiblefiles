echo "Logging in as sudo user"
ansible-playbook reset_to_root_only_1.yml --inventory=./hosts --ask-pass --ask-become-pass -v

echo "Pausing for 120 seconds to allow locks to let go..."
sleep 120

echo "Logging in as root"
ansible-playbook reset_to_root_only_2.yml --inventory=./hosts --user=root --ask-pass -v
