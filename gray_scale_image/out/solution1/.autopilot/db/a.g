#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/workspace_HLS/labs/lab1_task/task/Task_1/solution1/.autopilot/db/a.g.bc ${1+"$@"}
