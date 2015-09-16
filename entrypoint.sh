#!/bin/bash
set -e

[[ -n $DEBUG_ENTRYPOINT ]] && set -x

JIRA_PORT=${JIRA_PORT:-80}

sed 's/port="8080"/port="'${JIRA_PORT}'"/' -i /opt/atlassian/jira/conf/server.xml

exec $@