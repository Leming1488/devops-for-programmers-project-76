.PHONY: prepare-servers

prepare-servers:
	ansible-playbook -i inventory.ini playbook.yml -u root
