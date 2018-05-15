#!/usr/bin/env bash
# Name: Rio Atmadja
# Date 14 May 2018
# Group Project: Book Store
echo -e "\033[31m "
echo -e " ▄▄▄▄▄   ▄▄▄▄  ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄   ▄▄▄▄▄           ▄▄▄                       ▀▀█ "
echo -e "   █    █▀   ▀ █    █ █▀▄  █ █   ▀▄ █    █        ▄▀   ▀  ▄ ▄▄   ▄▄▄  ▄     ▄   █     ▄▄▄    ▄ ▄▄   ▄▄▄ "
echo -e "   █    ▀█▄▄▄  █▄▄▄▄▀ █ █▄ █ █    █ █▄▄▄▄▀        █       █▀  ▀ ▀   █ ▀▄ ▄ ▄▀   █    █▀  █   █▀  ▀ █   ▀ "
echo -e "   █        ▀█ █    █ █  █ █ █    █ █    █        █       █     ▄▀▀▀█  █▄█▄█    █    █▀▀▀▀   █      ▀▀▀▄ "
echo -e " ▄▄█▄▄  ▀▄▄▄█▀ █▄▄▄▄▀ █   ██ █▄▄▄▀  █▄▄▄▄▀         ▀▄▄▄▀  █     ▀▄▄▀█   █ █     ▀▄▄  ▀█▄▄▀   █     ▀▄▄▄▀ "
echo -e "\n"

IFS=$'\n'

# crawl the isbndb.com
echo -e "\033[31m [+]POPULATING DATABASE WITH PROGRAMMING BOOKS"
for name in {python,ruby}; do
  for i in {1..5}; do   curl --silent --user-agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" https://isbndb.com/books/more?query=$name\&page=$i | grep -E 'data=\".*.\"|<dt>' | sed -e 's/.*.data="//g' -e 's/type.*.//g' |  sed -e 's/<dt>//g' -e 's/<strong>//g' -e 's/<\/strong>//g'  -e 's/<\/dt>//g'  -e 's/       //g' -e 's/<\/a>//g' -e 's/<a.*.>//g'; done | grep -vE 'Edition:.*.'  >> book_store.txt;
done
cat book_store.txt

echo -e "\033[31m [+] Creating Files"
# convert each data into file
cat book_store.txt | grep https | sed -e 's/"//g'>> image
cat book_store.txt | grep "Full Title"  | sed -e 's/Full Title://g' -e 's/ //g' -e 's/,//g'  -e 's/#039//g' >> title
cat book_store.txt | grep ISBN: | sed -e 's/ISBN://g' -e 's/ //g' -e 's/#039//g' -e 's/,//g' >>  isbn
cat book_store.txt | grep ISBN13: | sed -e 's/ISBN13://g' -e 's/#039//g' -e 's/,//g' >> isbn13
cat book_store.txt | grep Publisher | sed -e 's/Publisher: //g' -e 's/#039//g' -e 's/,//g' >> publisher
cat book_store.txt | grep Date | sed -e 's/.*.Date://g' -e 's/ //g' -e 's/#039//g' -e 's/,//g' >> date
cat book_store.txt | grep Binding | sed -e 's/Binding://g'  -e 's/ //g' -e 's/#039//g' -e 's/,//g' >> binding

# create a column
paste -d , image title isbn isbn13 publisher date binding > database.txt


# create mysql database
mysql -uroot -proot -P8889 -e "CREATE DATABASE IF NOT EXISTS \`book_store\` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"

mysql -uroot -proot -P8889 -e "CREATE TABLE IF NOT EXISTS \`book_store\`.\`books\` (\`id\` INT NOT NULL AUTO_INCREMENT ,\`image\` varchar(57), \`title\` varchar(100), \`isbn\` varchar(10), \`isbn13\` bigint(14), \`publisher\` varchar(44), \`date\` varchar(10), \`binding\` varchar(19),PRIMARY KEY (id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"
IFS=,
# connect to mysql
while read col1 col2 col3 col4 col5 col6 col7 ; do
  mysql -uroot -proot -P8889  -e"use book_store; INSERT INTO books (image,title,isbn,isbn13,publisher,date,binding) VALUE ('$col1','$col2','$col3','$col4','$col5','$col6','$col7') ";
done < database.txt
