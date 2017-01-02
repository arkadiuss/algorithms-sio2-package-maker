name=$1
param=$2
echo $name
if [ ! -n "$param" ] 
then
	echo "generating tests"
	g++ .generator_files/generateIns.cpp -I $name -o .generator_files/gen
	touch .generator_files/progname
	echo $name" 10" > .generator_files/progname
	.generator_files/./gen < .generator_files/progname
fi
g++ $name/prog/$name.cpp -o .generator_files/$name
echo "generating answers"
for ((i=0;$i<=10;i++));do
	touch $name/out/$name$i.out
	.generator_files/$name < $name/in/$name$i.in > $name/out/$name$i.out
	echo 'test '$i' - done'
done
rm .generator_files/$name
rm .generator_files/gen
rm .generator_files/progname

