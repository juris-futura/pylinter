#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

black . --target-version py310 --check

echo "Done 🎉 \n"
