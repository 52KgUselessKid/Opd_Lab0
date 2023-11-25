# ========================= Задание 1 =========================
mkdir -p lab0/poliwag4 lab0/porygon3 lab0/zubat4
cd lab0
echo "Живет Cave Forest" > mismagius3
echo "Тип покемона GRASS NONE" > treecko0
echo -e "Способности\nSwarm Venom Compoundeyes Tinded Lens" > venonat5

cd poliwag4
mkdir remoraid bibarel
echo -e "Тип покемона NORMAL\nNONE" > porygon
echo -e "Способности Venom Poison Point\nRivalry" > nidorina
echo "Развитые способности Leaf Guard" > chikorita
echo -e "satk=4\nsdef=5 spd=6" > karrablast

cd ../porygon3
mkdir tynamo kingdra
cat > karrablast <<EOF
Способности Peck Leer Endure Fury Cutter
Fury Attack Headbutt False Swipe Bug Buzz Slash Take Down Scary Face
X-Scisssor Flail Swords Dance Double-Edge
EOF
echo -e "satk=9 sdef=9\nspd=6" > abomasnow
echo "Развитые способности Hydration" > barboach
cat > mantyke <<EOF
Способности
Bubble Tackle Supersonic Bubblebeam Confuse Ray Wing Attack Headbutt
Water Pulse Wide Guard Take Down Agility Air Slash Aqua Ring Bounce
Hydro Pump
EOF

cd ../zubat4
mkdir hitmonchan snover feraligatr
echo -e "Живет\nMountain" > rhyperior
echo -e "Способности Mind Mold Overcoat Magic\nGuard" > duosion
echo -e "Способности Bide Harden Growth Nature Power Synthesis\nSunny Day Explosion" > seedot

cd ..

echo -e "\nРезультат ls -lR, Задание 1:"
ls -lR
# ========================= Задание 2 =========================
chmod 600 mismagius3
chmod 750 poliwag4
chmod u=rwx,g=wx,o=rw porygon3
chmod u=-,g=-,o=r treecko0
chmod u=r,go=- venonat5
chmod 305 zubat4

cd poliwag4
chmod ug=wx,o=rx remoraid
chmod 620 porygon
chmod a=r nidorina
chmod 006 chikorita
chmod u=r,go=- karrablast
chmod u=rx,go=rwx bibarel

cd ../porygon3
chmod 006 karrablast
chmod uo=rwx,g=wx tynamo
chmod 666 abomasnow
chmod 600 barboach
chmod u=wx,g=rw,o=x kingdra
chmod u=rw,g=-,o=r mantyke

cd ../zubat4
chmod 524 hitmonchan
chmod u=rwx,g=rw,o=r snover
chmod ug=r,o=- rhyperior
chmod u=rw,go=w duosion
chmod 311 feraligatr
chmod 666 seedot

cd ..

echo -e "\nРезультат ls -lR, Задание 2:"
ls -lR
# ========================= Задание 3 =========================
chmod u+r porygon3/karrablast porygon3/kingdra
cp -R porygon3 porygon3/kingdra
chmod u-r porygon3/karrablast porygon3/kingdra
chmod u+r treecko0
cp treecko0 porygon3/tynamo
cat treecko0 > zubat4/rhyperiortreecko
chmod u-r treecko0
ln mismagius3 poliwag4/chikoritamismagius
ln -s $(realpath venonat5) porygon3/mantykevenonat
ln -s $(realpath poliwag4) Copy_41
cat porygon3/mantyke poliwag4/porygon > mismagius3_67

echo -e "\nРезультат ls -lR, Задание 3:"
ls -lR
# ========================= Задание 4 =========================
echo -e "\nЗадание 4:"

wc -m porygon3/* | sort -nr 2>/tmp/temp.tmp
echo -e "\n"
chmod u+r zubat4
ls -R zubat4 | sort | cat -s 2>&1
chmod u-r zubat4
cat $(ls -1dp **/k*) | sort 2>&1
chmod u+r poliwag4/remoraid porygon3/kingdra zubat4
ls -lR | grep "r$" | tail -n 2 | sort -n 2>/tmp/temp.tmp
ls -lR | grep "n$" | tail -n 2 | sort -Mr
chmod u-r poliwag4/remoraid porygon3/kingdra zubat4
wc -m mismagius3 >> mismagius3
# ========================= Задание 5 =========================
chmod u+w treecko0
rm treecko0
rm porygon3/abomasnow porygon3/mantykevenon* 
rm poliwag4/chikoritamismagi*
chmod -R u+rw porygon3
rm -R porygon3
rmdir zubat4/hitmonchan

echo -e "\nРезультат ls -lR, Задание 5:"
ls -lR