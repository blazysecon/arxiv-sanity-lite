#!/bin/bash

cd /Users/giedrius/git/arxiv-sanity-lite/
/Users/giedrius/git/arxiv-sanity-lite/.venv/bin/python /Users/giedrius/git/arxiv-sanity-lite/arxiv_daemon.py --num 5000  # -s 49000
# 10000 = 5mo
if [ $? -eq 0 ]; then
    echo "New papers detected! Running compute.py"
    python3 compute.py
else
    echo "No new papers were added, skipping feature computation"
fi
