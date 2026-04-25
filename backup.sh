backup_dir="backup_$(date +%Y%m%d_%H%M%S)"
mkdir $backup_dir

for file in *.txt
do
	cp $file $backup_dir/
done

echo "Backup Completed in folder : $backup_dir"
