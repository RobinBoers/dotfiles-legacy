#!/usr/bin/python

import json, subprocess

output = subprocess.check_output(['swaymsg', '-t', 'get_workspaces'])
workspaces = json.loads(output)

next_num = next(i for i in range(1, 100) if not [ws for ws in workspaces if ws['num'] == i])

subprocess.call(['swaymsg', 'workspace number %i' % next_num])
