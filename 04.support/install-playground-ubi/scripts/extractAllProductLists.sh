#!/bin/sh

find "${SUIF_HOME}/02.templates/" -type f -name template.wmscript -exec sh -c './extractProductListForScriptFile.sh "$1"' _ {} \;
