fullname=$1
shortcut=$2
timelimits=$4
memorylimits=$3
mkdir $shortcut
cd $shortcut
mkdir "in" 
mkdir "out" 
mkdir "prog"
mkdir "doc"
cp ../task_template.dotx doc/$shortcut.dotx
cp ../makeIn_template.cpp makeIn.cpp
touch config.yml
echo "title: $fullname" >> config.yml
echo "memory_limits:" >> config.yml
for ((i=0;$i<=10;i++)) do 
	echo "  $i: $memorylimits" >> config.yml
done
echo "time_limits:" >> config.yml
echo "  0a: $timelimits" >> config.yml
echo "  0b: $timelimits" >> config.yml
echo "  0c: $timelimits" >> config.yml
for ((i=1;$i<=10;i++)) do 
	echo "  $i: $timelimits" >> config.yml
done
