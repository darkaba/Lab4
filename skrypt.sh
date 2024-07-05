#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
  date
fi

if [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
  count=${2:-100} 
  for i in $(seq 1 $count); do
    echo "log${i}.txt" > log${i}.txt
    echo "$0" >> log${i}.txt
    date >> log${i}.txt
  done
fi

if [ "$1" == "--error" ] || [ "$1" == "-e" ]; then
  count=${2:-100} 
  for i in $(seq 1 $count); do
    mkdir -p error${i}
    echo "error${i}.txt" > error${i}/error${i}.txt
    echo "$0" >> error${i}/error${i}.txt
    date >> error${i}/error${i}.txt
  done
fi

if [ "$1" == "--init" ]; then
  git clone https://github.com/darkaba/Lab4.git
  export PATH=$PATH:$(pwd)/Lab4
fi

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
  echo "--date, -d: Pokazuje dzisiejsza date"
  echo "--logs [N], -l [N]: Tworzy pliki log"
  echo "--error [N], -e [N]: Tworzy pliki error"
  echo "--init: Klonuje repozytorium i ustawia PATH"
  echo "--help, -h: Pokazuje pomoc"
fi

