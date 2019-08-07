#!/bin/bash

NOW=$(date '+H%HM%MS%S_%m-%d-%Y')

vcgencmd measure_temp > /home/madsen/Logs/Temperature/$NOW

vcgencmd measure_volts core > /home/madsen/Logs/Volts/${NOW}_core

vcgencmd measure_volts sdram_c > /home/madsen/Logs/Volts/${NOW}_sdramc
vcgencmd measure_volts sdram_i > /home/madsen/Logs/Volts/${NOW}_srami
vcgencmd measure_volts sdram_p > /home/madsen/Logs/Volts/${NOW}_sdramp

vcgencmd get_mem arm > /home/madsen/Logs/Memory/${NOW}_arm
vcgencmd get_mem gpu > /home/madsen/Logs/Memory/${NOW}_gpu

cat /proc/meminfo > /home/madsen/Logs/meminfo/${NOW}
cat /proc/cpuinfo > /home/madsen/Logs/cpuinfo/${NOW}
cat /proc/diskstats > /home/madsen/Logs/diskstats/${NOW}
cat /proc/loadavg > /home/madsen/Logs/loadavg/${NOW}
