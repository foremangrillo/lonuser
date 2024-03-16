#!/bin/bash
x=$(touch $HOME/.config)
a=$(pwd | grep home | cut -d / -f 2)



create(){
source ./teste.sh
echo $cpus

verificar_ova=$(ls -b *.ova)
echo $verificar_ova
VBoxManage import ./$verificar_ova --vsys 0 --vmname $name --memory $memory --cpus $cpus --eula=accept
#VBoxManage createvm --name 7Test --ostype Oracle_64 --register 
#VBoxManage modifyvm 7Test --cpus $cpus --memory $memory --vram $vram
}
init(){

if [ ! -e  teste.sh ];
then
echo "entre com o nome do virtualbox"
read nometeclar
echo "

cpus='1'
memory="4000"
vram="12"
name=$nometeclar
download="list/list/Ubuntu_for_Horizon7.ova"
" >> teste.sh
else
echo "existe o arquivo de config"
fi
}


start(){
source ./teste.sh
VBoxHeadless --startvm "$name" &
}

stop(){
source ./teste.sh
vboxmanage controlvm "$name" poweroff 
}

case $1 in
init) init;;
start)start;;
stop)stop;;
esac


while getopts ":ctid" flag;
do
 case "$flag" in
c) create;;
t) curl -s teste.local/list.txt | grep $2 | awk '{print $0}';;
i) init;;
d) wget teste.local/$2;;
esac
done
