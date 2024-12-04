#! /bin/sh

# shellcheck disable=SC2317
# SC2317 - when unit testing with shunit2, commands seem not to be reachable


# Assuming we are in a posix devcontainer mounting our project under /workspaces
if ! which find 2>/dev/null ; then
  echo "FATAL: environment does not have the find command, cannot continue"
  exit 1
fi
SCRIPTS_HOME=$(find /workspaces -type d -name '01.scripts')

if [ ! -d "${SCRIPTS_HOME}" ]; then
  echo "Cannot find the scripts home folder"
fi

# shellcheck source=SCRIPTDIR/../../../01.scripts/commonFunctions.sh
. "${SCRIPTS_HOME}/commonFunctions.sh"

testUrlEncode1(){
  STR='a/c'
  ENCSTR=$(urlencode "${STR}")
  assertEquals "${ENCSTR}" 'a%2fc'
}

# Load shUnit2.
. /usr/bin/shunit2
