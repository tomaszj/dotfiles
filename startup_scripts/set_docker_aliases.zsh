#!/usr/bin/env bash
# Script setting up tmux alias

alias docka_start="boot2docker start && $(boot2docker shellinit)"
alias docka_shell="$(boot2docker shellinit)"
alias docka_ip="boot2docker ip"

