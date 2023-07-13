#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "Please run as root"
  exit
fi
clear

export docker_stack_name="csrt-testing"

# Запоминаем папку запуска
export project_dir_path=`pwd`/

# Запоминаем платформу системы
export OS_PLATFORM=`uname -s`/`uname -m`

printf '
==============================================
RUNNING             "build_project.sh"\n'
echo "DISPLAY:            ${DISPLAY}"
echo "HOSTNAME:           ${HOSTNAME}"
echo "docker_stack_name:  ${docker_stack_name}"
echo "project_dir_path:   ${project_dir_path}"
echo "OS_PLATFORM:        ${OS_PLATFORM}\n"
sleep 1

cd ${project_dir_path}

COMPOSE_DOCKER_CLI_BUILD=1 \
DOCKER_BUILDKIT=1 \
HOSTNAME=${HOSTNAME} \
DISPLAY=${DISPLAY} \
docker-compose -p "${docker_stack_name}" up -d --build

printf '
==============================================
BUILD SUCCESSFUL
==============================================\n\n'
