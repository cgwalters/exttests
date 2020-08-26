#!/bin/bash
set -xeuo pipefail
for repo in ostreedev/ostree coreos/rpm-ostree; do
    bn=$(basename ${repo})
    git clone --depth=1 https://github.com/${repo} ${bn}
    cd ${bn}/tests/kolainst
    make -j 4
    make install
    cd -
    rm ${bn} -rf
done
