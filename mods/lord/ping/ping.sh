#!/bin/sh
ping -c 1 $1 | sed "\$!d;s/.*= \([0-9\.]*\)\/\([0-9\.]*\).*/Пинг до сервера $1: \2 мс/"