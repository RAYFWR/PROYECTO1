#!  /bin/bash
file=cpu.log
path=/var/log/

cd $path
if !(find $file)
then
        touch $file
fi
echo -e "$(date +%d/%m/%Y-%H:%M:%S)\t$(hostname -A)\t$(grep 'cpu'/proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')" >> $file
