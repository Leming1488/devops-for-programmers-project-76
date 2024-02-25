### Hexlet tests and linter status:
[![Actions Status](https://github.com/Leming1488/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Leming1488/devops-for-programmers-project-76/actions)

# Проект Ansible для установки pip и Docker

## Подготовка

Убедитесь, что Ansible установлен на вашей машине. Если нет, установите его согласно официальной документации.

## Установка зависимостей

Для установки зависимостей из Ansible Galaxy выполните:

    ansible-galaxy install -r requirements.yml

## Запуск плейбука

Для запуска плейбука используйте следующую команду:

    ansible-playbook -i inventory.ini playbook.yml

## Конфигурация

Для настройки переменных проекта отредактируйте файлы в директории `group_vars/`.
