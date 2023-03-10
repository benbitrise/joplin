#!/usr/bin/env bash
# fail if any commands fails
set -e
# make pipelines' return status equal the last command to exit with a non-zero status, or zero if all commands exit successfully
set -o pipefail
# debug log
set -x

cd "$(dirname "$0")/.."

echo "*********** RUNNING YARN ***********"
yarn

echo "*********** RUNNING YARN ***********"
cd packages/app-mobile/android && ./gradlew assembleDebug