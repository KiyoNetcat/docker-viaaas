#!/usr/bin/env sh

set -e

for SCRIPT_FILE in $(find /scripts -type f -print)
do
	${SCRIPT_FILE}
done

cd /app
exec java ${JVM_OPTS: } -jar VIAaaS-all.jar $@
