#!/bin/bash

# JAR=${JAR:-minecraft_server.1.17.1.jar}
# JAVA_OPTS=${JAVA_OPTS:--Xmx8G}
# MC_OPTS=${MC_OPTS:-nogui}

# if [[ -f ./environment ]]; then
#     source ./environment
# fi

if ! grep -q "eula=true" eula.txt; then
    if [ "${EULA}" = true ]; then
        echo "eula=true" | tee eula.txt
    fi
fi

java $JAVA_OPTS -jar $JAR $MC_OPTS
