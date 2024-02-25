.PHONY: prepare-servers

prepare-servers:
	ansible-playbook -i inventory.ini playbook.yml -u root

.PHONY: deploy-redmine

deploy-redmine:
	ansible-galaxy install -r requirements.yml
	ansible-playbook -i inventory.ini deploy_redmine.yml

.PHONY: encrypt-vault decrypt-vault edit-vault

# Шифрование файла секретов
encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml

# Расшифровка файла секретов
decrypt-vault:
	ansible-vault decrypt group_vars/webservers/vault.yml
