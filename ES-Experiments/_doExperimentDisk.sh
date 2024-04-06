cont=1
while [[ $cont -lt 4 ]]
do
echo write file
dd if=/dev/zero of=/mnt/beegfs/testfile.bin bs=1M count=100 conv=fsync
echo read file
dd if=/mnt/beegfs/testfile.bin of=/dev/null bs=1M
echo removing file
rm /mnt/beegfs/testfile.bin
cont=$(expr $cont + 1)
done