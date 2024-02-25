.PHONY: prepare-servers

prepare-servers:
	ansible-playbook -i inventory.ini playbook.yml -u root

.PHONY: deploy-redmine
deploy-redmine:
	ansible-galaxy install -r requirements.yml
	ansible-playbook -i inventory.ini deploy_redmine.yml
