#!/bin/bash
echo "[merge]" >> ~/.gitconfig
echo "  tool = splice" >> ~/.gitconfig
echo "[mergetool \"splice\"]" >> ~/.gitconfig
echo "  cmd = \"vim -f $BASE $LOCAL $REMOTE $MERGED -c 'SpliceInit'\"" >> ~/.gitconfig
echo "  trustExitCode = true" >> ~/.gitconfig
