#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "python" python --version
check "poetry" poetry --version
check "gcloud" gcloud --version
check "gcloud-config" ls ~/.config/gcloud
check "git-lfs" git lfs --version

# Report result
reportResults
