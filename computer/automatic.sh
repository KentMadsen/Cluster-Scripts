#!/bin/bash

NOW=$(date '+H%HM%MS%S_%m-%d-%Y')

cat /proc/cpuinfo > /home/madsen/Logs/cpuinfo/$NOW

cat /proc/meminfo > /home/madsen/Logs/meminfo/$NOW

cat /proc/diskstats > /home/madsen/Logs/diskstats/$NOW

