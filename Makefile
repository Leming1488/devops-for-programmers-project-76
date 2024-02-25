install-ansible:
	sudo apt-get update
	sudo apt-get install software-properties-common
	sudo apt-add-repository --yes --update ppa:ansible/ansible
	sudo apt-get install ansible

install-galaxy-roles:
	ansible-galaxy install -r requirements.yml

prepare-servers:
	ansible-playbook -i inventory.ini playbook.yml -u root

deploy-redmine:
	ansible-galaxy install -r requirements.yml
	ansible-playbook -i inventory.ini deploy_redmine.yml --ask-vault-pass

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml

decrypt-vault:
	ansible-vault decrypt group_vars/webservers/vault.yml
