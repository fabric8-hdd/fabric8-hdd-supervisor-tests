#!/bin/bash

# Should be provided by Jenkins.
export JOB_BASE_NAME=scout-metric-push

# Should be provided by Jenkins.
export BUILD_NUMBER=0

# supervisor server HTTP scheme http/https
export SERVER_SCHEME=http

# supervisor server machine address.
export SERVER_HOST=http://measurement-fabric8-hypothesis-measurement-api.dev.rdu2c.fabric8.io/measurement

# Locust SSH user
export SSH_USER=centos

# Locust node workdir
export SSH_WORKDIR=/home/centos

# Locust MASTER node.
export MASTER_HOST=osioperf-server-2

# A number of Locust slaves to use.
export SLAVES=1

# A prefix for a Locust slave node address.
export SLAVE_PREFIX=osioperf-client-

# A number of users to spawn.
export USERS=1

# A hatch rate (number of users to spawn per second).
export USER_HATCH_RATE=1

# A name of the property file with username=password list of users to be logged in
export USERS_PROPERTIES_FILE=osioperftest.users.properties

# A file where USER_TOKENS environmental variable is supposed to be set.
# This file is copied to locust master/slaves to be sources by BASH before executing the locust itself.
# So the locust process get's passed the USER_TOKENS variable.
export ENV_FILE=/tmp/osioperftest.users.env

# 'true' if a report will be sent to a Zabbix instance
export ZABBIX_REPORT_ENABLED=false

# An address of Zabbix server
export ZABBIX_SERVER=zabbix.devshift.net

# A port of Zabbix server used by zabbix_sender utility
export ZABBIX_PORT=10051

# A hostname in Zabbix the report is for
export ZABBIX_HOST=hdd-measurement-api.dev

# A number of seconds for how long the test should run
export DURATION=300