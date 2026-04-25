filename=$1

if [ -z "$filename" ]; then 
	echo "please provide a filename."
	exit 1
fi

if [ -f "$filename" ]; then
	backup_dir="backup_$(date +%Y%m%d_%H%M%S)"
	mkdir $backup_dir

	cp "$filename" $backup_dir/
	echo "File Backedup Successfully to $backup_dir 🚀"
else
	echo "File Doesn't Exist..."
fi
