#!/bin/bash
if [ "$1" == "--date" ]; then
  date
fi
if [ "$1" == "--logs" ]; then
  count=${2:-100}
  for i in $(seq 1 $count); do
    echo "log${i}.txt" > log${i}.txt
    echo "$0" >> log${i}.txt
    date >> log${i}.txt
  done
fi
if [ "$1" == "--help" ]; then
  echo "--date: Pokazuje dzisiejsza date"
  echo "--logs [N]: Tworzy pliki n log"
  echo "--help: Pokazuje pomoc"
fi
