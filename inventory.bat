echo  off

echo "*********************************"

echo "                                  "
echo "Deleting the folder..."
rmdir /Q /S d:\myinventory

echo "Creating the folder..."
md d:\myinventory

echo "                          "

echo "Colleting the infomation..."
systeminfo >> d:\myinventory\srvlog.txt

echo "removing the mapped drive..."
net use z: /delete

echo "Mapping the driver...."
net use z: \\localhost\inventory

echo "Copying the files from local to shared folder "
copy d:\myinventory\srvlog.txt z:\srvlog.txt

echo " Run  successfully "
echo "********************************"
