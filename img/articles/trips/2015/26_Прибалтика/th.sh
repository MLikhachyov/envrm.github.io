#!/bin/bash

#Создан:  Вт 27 янв 2015 21:41:37
#Изменён: Вт 17 фев 2015 09:54:34

mkdir -p "${1:-.}/th";
for i in *.jpg; {
	convert -define jpeg:size=95x95 "$i"  -thumbnail 95x95^ \
          -gravity center -extent 95x95 "th/$i"
}

