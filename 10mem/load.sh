#!/bin/bash
set -e
parallel2_dir=$HOME/parallel2
a2sql_dir=${parallel2_dir}/sys/src/tools/a2sql/a2sql
txt2sql=${a2sql_dir}/txt2sql

db=a.sqlite
rm -f ${db}

${txt2sql} ${db} --table a \
    -f 'output/out_.*?_(?P<cpu_node>\d+)_(?P<mem_node>\d+).txt' \
    -e '(?P<n>\d+) elements x (?P<nc>\d+) chains x (?P<nscan>\d+) scans x (?P<nthreads>\d+) threads = (?P<nrecords>\d+) record accesses = (?P<nloads>\d+) loads' \
    -e 'data: (?P<sz>\d+) bytes' \
    -e 'shuffle: (?P<shuffle>.*)' \
    -e 'payload: (?P<payload>.*)' \
    -e 'method: (?P<method>[^\s]+)' \
    -e '(?P<clocks>\d+) clocks' \
    -e '(?P<sec>.*?) sec' \
    -e '(?P<bytes_per_clock>.*?) bytes/clock' \
    -e '(?P<gb_per_sec>.*?) GB/sec' \
    -r '(?P<clocks_per_rec>.*?) clocks per record' \
    output/out_*.txt



