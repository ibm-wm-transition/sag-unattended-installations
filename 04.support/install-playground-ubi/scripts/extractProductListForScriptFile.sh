#!/bin/sh

# shellcheck source=SCRIPTDIR/../../../01.scripts/installation/setupFunctions.sh
. "${SUIF_HOME}/01.scripts/installation/setupFunctions.sh"

logI "Processing file ${1}"

# newFile=$(strSubstPOSIX "${1}" "template.wmscript" "ProductList.txt")

newFile=$(dirname "${1}")'/ProductList.txt'

logI "New file is ${newFile}"

extractProductListFromInstallationScript "${1}" > "${newFile}"
