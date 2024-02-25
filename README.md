### Hexlet tests and linter status:
[![Actions Status](https://github.com/Leming1488/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Leming1488/devops-for-programmers-project-76/actions)

# Деплой Docker-образов с помощью Ansible

## Управление развертыванием Redmine и настройкой DataDog

Этот проект включает в себя автоматизированный процесс для развертывания приложения Redmine на серверах, а также настройку мониторинга с помощью агента DataDog.

## Начало работы

Перед началом работы убедитесь, что на вашей машине установлены Ansible и необходимые зависимости.

### Установка Ansible

Выполните следующие команды для установки Ansible на системе Ubuntu:

```bash
make install-ansible

###  Установка зависимостей из Ansible Galaxy

```bash
make install-galaxy-roles


### Подготовка серверов

Для начальной подготовки серверов под развертывание приложения используйте команду:

```bash
make prepare-servers

### Развертывание Redmine

Для развертывания приложения Redmine на серверах выполните:

```bash
make deploy-redmine

### Управление секретами с помощью Ansible Vault

Для шифрования файла с секретами:

```bash
make encrypt-vault

Для расшифровки файла с секретами:

```bash
make decrypt-vault
