#!/usr/bin/env bash

IFS=$'\n'
# CREATE TABLE `book_store`.`books` ( `id` INT NOT NULL AUTO_INCREMENT , `image` VARCHAR(255) NOT NULL , `title` VARCHAR(255) NOT NULL , `isbn` VARCHAR(255) NOT NULL , `isbn13` VARCHAR(255) NOT NULL , `edition` VARCHAR(255) NOT NULL , `publisher` VARCHAR(255) NOT NULL , `publish_date` VARCHAR(255) NOT NULL , `binding` VARCHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

echo -e "\033[31m [+]POPULATING DATABASE"
for i in {1..5}; do   curl --silent --user-agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36" https://isbndb.com/books/more?query=ruby\&page=$i | grep -E 'data=\".*.\"|<dt>' | sed -e 's/.*.data="//g' -e 's/type.*.//g' |  sed -e 's/<dt>//g' -e 's/<strong>//g' -e 's/<\/strong>//g'  -e 's/<\/dt>//g'  -e 's/       //g' -e 's/<\/a>//g' -e 's/<a.*.>//g'; done | grep -vE 'Edition:.*.'  >> book_store.txt
cat book_store.txt


#cat book_store.txt | grep -i title | sed -e 's/Full Title://g' -e 's/ //g'  | xargs -I {} mysql -uroot -proot -e "use book_store; INSERT INTO books (title) VALUES (\"{}\");"

# num=$((0)); for i in $( cat output.txt) ; do if [[ "$num" -le 7 ]]; then echo -n $i  , ;((num++)); else echo -e "\n" ; num=0 ; fi; done

echo -e "\033[31m [+] Creating Files"
# convert each data into file
cat book_store.txt | grep https >> image
cat book_store.txt | grep "Full Title"  | sed -e 's/Full Title://g' -e 's/ //g' >> title
cat book_store.txt | grep ISBN: | sed -e 's/ISBN://g' -e 's/ //g' >>  isbn
cat book_store.txt | grep ISBN13: | sed -e 's/ISBN13://g' >> isbn13
cat book_store.txt | grep Publisher | sed -e 's/Publisher: //g' >> publisher
cat book_store.txt | grep Date | sed -e 's/.*.Date://g' -e 's/ //g' >> date
cat book_store.txt | grep Binding | sed -e 's/Binding://g'  -e 's/ //g'  >> binding
paste image title isbn isbn13 publisher date binding   | column -t -s,  > database.txt

cat database.txt
chmod +x CreateCSV.py
./CreateCSV.py

mysql -uroot -proot -e "CREATE DATABASE IF NOT EXISTS \`book_store\` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"

mysql -uroot -proot -e "CREATE TABLE IF NOT EXISTS \`book_store\`.\`books\` (\`id\` INT NOT NULL AUTO_INCREMENT ,\`image\` varchar(57), \`title\` varchar(100), \`isbn\` varchar(10), \`isbn13\` bigint(14), \`publisher\` varchar(44), \`date\` varchar(10), \`binding\` varchar(19),PRIMARY KEY (id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"
