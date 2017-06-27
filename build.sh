#!/bin/bash
# USAGE: . build.sh codename

DEVICE="$1"

export ANDROID_JACK_VM_ARGS="-Xmx10240m -Xms256m -Dfile.encoding=UTF-8 -XX:+TieredCompilation"

echo «============================================»
java -version
echo «============================================»
# Объявляем переменную со значением 4
choice=4
# Выводим на экран
echo «1. Старт»
echo «2. Выбор Java и Cтарт»
echo «3. Очистка и Старт»
echo -n «Please choose a word [1,2 or 3]? »
# Выполняем, пока переменная равна 4
# Зацикливание
while [ $choice -eq 4 ]; do
# читаем пользовательский ввод
read choice
# вложенное «если-иначе» условие
if [ $choice -eq 1 ] ; then
echo «============================================»
java -version
echo «============================================»
else
if [ $choice -eq 2 ] ; then
echo «============================================»
java -version
echo «Переключение версии Java:»
sudo update-alternatives --config java
sudo update-alternatives --config javac
java -version
echo «============================================»
else
if [ $choice -eq 3 ] ; then
echo «============================================»
make clean
make installclean
echo «============================================»
else
echo «============================================»
echo «Please make a choice between 1-3 !»
echo «1. Старт»
echo «2. Выбор Java и Cтарт»
echo «3. Очистка и Старт»
echo -n «Please choose a word [1,2 or 3]? »
echo «============================================»
choice=4
fi
fi
fi
done

#. build/envsetup.sh && breakfast Q415
. build/envsetup.sh && export WITH_SU=true && brunch Q415
#. build/envsetup.sh && brunch 415

