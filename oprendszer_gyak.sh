3. Készítsen olyan parancsot, amely az alma.txt állományt átnevezi barack.txt-
re.

mv alma.txt baract.txt



4.
Készítsen olyan parancsot, amely a tulajdonos számára hozzáadja az script.bash
állományhoz a futtatási jogot. Ügyeljen arra, hogy más jogosultságokban változás ne es-
sen!
 
chmod u+x script.bash




5. Készítsen olyan parancsot, amely install.xml állomány jogosultságait úgy
állítja be, hogy az állományt a tulajdonosa írhatja és olvashatja, a vele azonos csoportban
lév®k csak olvashatják azt, a többiek számára pedig egyetlen művelet sem megengedett!

chmod 640 install.xml




6.Készítsen olyan parancsot, mely kiírja a képerny®re a bejelentkezett felhasználó
HOME könyvtárának elérési útvonalát.
 
echo $HOME




7.Készítsen olyan parancsot, amely a kimenetére írja az talicska.txt állomány
utolsó 10 karakterét. 

tail -c 10 talicska.txt




8.Készítsen olyan parancsot, amely a 3452 azonosítóval rendelkez® processzus
számára elküldi a 9-es szignált. 

kill -9 3452




9. Adja meg, hogyan id®zíthetjük a /backup.sh futtatását minden vasárnap éjfélre
a crontab segítségével.

00 00 * * 7 * ./bash.sh




10. Készítsen olyan összetett parancsot, amely megmutatja, hogy hány nem üres
sort tartalmaz a partners.txt állomány.

awk 'NF' asd.txt | wc -l




11. Készítsen olyan összetett parancsot, amely megmutatja a felhasználó HOME
könyvtárában található alkatalógusok darabszámát.

ls -p $HOME | grep  /$ | wc -l




12. Készítsen olyan parancsot, amely kilistázza guest felhasználó processzusait.

ps -U guest


13. Készítsen összetett parancsot, amely kiírja abc rendben az összes olyan állomány
nevét az adott könyvtárban, amelyekre csak a tulajdonosának és a csoportjának van írási
joga, a cs®vezeték vizsgálja a rejtett állományokat is! Használja az ls parancsot!


ls -la | grep ^..w..w..- | awk '{ print $9 }'




14. Készítsen olyan reguláris kifejezést, amely az IPv4 címekre illeszkedik. 0.0.0.0-127.255.255.255 128.0.0.0-191.255.255.255 192.0.0.0-223.255.255.255  224 111000000

(25[0-5]|2[0-4][0-9]|[1-9][0-9]|[1-9])\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[1-9][0-9]|[1-9]) <- ez a létező legprecízebb megoldás, de biztos hogy nem erre gondoltak csak a 3 szám . 3 szám . 3 szám . 3 számra :D




15. Készítsen olyan összetett parancsot, amely kiírja a kimenet.csv állományba
a input.csv második oszlopában szerepl® egyedi értékeket, majd a standard kimenetre
írja ki, hogy hány különböz® egyedi érték szerepelt az adott oszlopban. (Az állományban
az oszlopok elhatárolására ; karakter szolgál.)

awk -F "\"*;\"*" '{ print $2 }' input.csv | tee kimenet.csv | sort | uniq | wc -l





2017.12.24.


3. Készítsen olyan parancsot, amely az aktuális könyvtár összes .txt kiterjesztés¶ állomá-
nyának tartalmát sum.bak állományba másolja.

cat *.txt > sum.bak




4. Készítsen olyan parancsot, amely létrehoz 144 darab üres fájlt.

touch szoveg-{001..144}.txt




5. Adja meg azt a parancsot, amely megadja az aktuális munkakönyvtár nevét.

pwd




6. Állítsa át az a.txt állomány tulajdonosát guest-re.

sudo chown guest feladat.txt 




7. Készítsen olyan (esetleg összetett) parancsot, amely a kimenetére írja az a.txt állomány
ötödik sorát.

sed -n '5p' feladat.txt 




8. Készítsen olyan összetett parancsot, amely megmutatja, hogy hány sornyi megjegyzést
(hány darab # karakterrel kezd®d® sort) tartalmaz az /etc/fstab állomány.

grep ^# /etc/fstab | wc -l




9. Mikor fut le a \backup.sh ha az alábbi crontab bejegyzés tartozik hozzá. (1 pont)
* 10 10 * * \backup.sh.

Minden hónap 10.-es 10 óra.




10. Készítsen olyan összetett parancsot, amely megmutatja, hogy mely felhasználók tulajdo-
nában találhatók állományok az /opt katalógusban. Ügyeljen arra, hogy egyetlen felhasz-
nálónév se szerepeljen többször.

ls -la /var | awk '{if ($3) print $3}' | uniq




11. Készítsen olyan összetett parancsot, amely megmutatja (igen vagy nem kimenettel jelzi),
hogy létezik-e a alma.txt nev¶ állomány.

test -f alma.txt && echo 'Igen' || echo 'Nem'




12. Készítsen olyan összetett parancsot, amely megmutatja, hogy az aktuális katalógusban
hány darab olyan állomány van, amelynek neve .txt karaktersorozatra végz®dik.

ls -la | grep .txt$ | wc -l




13. Készítsen olyan összetett parancsot, amely megadja ,hogy hány felhasználó futtat épp
olyan parancsot, amiben a bash szórészlet szerepel.

ps aux | grep bash | awk '{ print $1}' | uniq | wc -l




14. Készítsen olyan reguláris kifejezést, ami az el®jel nélküli oktális egészekre illeszkedik.
(Bevezet® 0 számjegyek megjelenése nem megengedett!)

^[1-9][0-7]*$ -> példa rá -> cat szamok.txt | grep ^[1-9][0-7]*$




15. Készítsen olyan parancsot, amely a bemeneten érkez® sorokban található hh:mm formában
megadott id®pontokat hh.mm alakúra cseréli.

sed -E e'/[0-9]{2}:[0-9]{2}/' | sed s/:/\./ <- Talán ezt a legegyszerűbb