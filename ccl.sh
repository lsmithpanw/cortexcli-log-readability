#!/bin/bash
last_log_file=~/.cortexcli/cortexcli-log/$(ls -t ~/.cortexcli/cortexcli-log/ | head -n1)
echo ${last_log_file}:
cat $last_log_file | jq -r '[(.severity, .message)] | @csv'
