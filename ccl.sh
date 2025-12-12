#!/bin/bash
last_log_file=~/.cortexcli/logs/$(ls -t ~/.cortexcli/logs/ | head -n1)
echo ${last_log_file}:
cat $last_log_file | jq -r '[(.severity, .message)] | @csv'
