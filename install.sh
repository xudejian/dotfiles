#!/bin/bash
pushd `dirname $0`
for f in ./scripts/install/*.sh
do
  bash $f
done
popd
