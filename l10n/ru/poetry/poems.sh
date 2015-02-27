#!/bin/bash

#Создан:  Пт 27 фев 2015 14:00:57
#Изменён: Пт 27 фев 2015 15:36:47

PREV="..\/poetry.html"

i=1

for file in txt/*; {
	filename=$(basename $file)

	PAGE=${filename/txt/html}

	TITLE=$(head -n 1 $file)

	NEXT=$(\ls -1 txt/ | sed -n "/$filename/{n;p}" | sed 's/txt/html/')

	[[ "$NEXT" == "" ]] && NEXT="..\/poetry.html"

	cat t1.tpl | sed "s/{{TITLE}}/$TITLE/" > $PAGE

	# Список ссылок
	for item in txt/*; {
		FF=$(basename $item | sed 's/txt/html/')
		TT="$(head -n 1 $item)"

		[[ "$TT" == "$TITLE" ]] && CLASS="class=\"menu-current\"" || CLASS='\b'

		echo "        <li> <a $CLASS href=\"$FF\">&laquo;$TT&raquo;</a></li>" >> $PAGE
	}

	cat t2.tpl | sed "s/{{PREV}}/$PREV/g; s/{{NEXT}}/$NEXT/g; s/{{TEXT}}/TEXT/" >> $PAGE

	cat $file | tail -n +2 >> $PAGE

	cat t3.tpl >> $PAGE

	# echo "$i ${filename/.txt} TITLE $TITLE PREV $PREV NEXT $NEXT"

	PREV=${filename/.txt/.html}

	((i++))
}

