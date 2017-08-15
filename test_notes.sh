#!/bin/bash

CUR_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
git_log=/tmp/git_log
git log > $git_log

if [ -s $git_log ]; then
  $CUR_DIR/test_notes.py $git_log
fi
