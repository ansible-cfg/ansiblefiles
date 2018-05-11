A_PLAYBOOK="reset_to_root_only"

# go to ansible root folder
cd ../../

# copy playbook files to root ansible folder
cp --verbose --force ./misc/playbooks/"${A_PLAYBOOK}"*.yml .

# run shell script to run playbook
source "./misc/scripts/${A_PLAYBOOK}.sh"

# remove playbook files from root ansible folder
rm --verbose --force ./"${A_PLAYBOOK}"*.*

# go back to scripts folder
cd ./misc/scripts/
