#!/bin/bash

# Stop the script if a command fails.
set -e

# 1. Navigate to the home directory and display the current location.
cd ~
pwd

# 2. Create a directory called practice and enter it.
mkdir -p practice
cd practice

# 3. Create an empty file.
touch example.txt

# 4. Copy the file.
cp example.txt copy_example.txt

# 5. Rename the copied file.
mv copy_example.txt renamed_example.txt

# 6. Create a subdirectory.
mkdir -p subdir

# 7. Move the renamed file into the subdirectory.
mv renamed_example.txt subdir/

# 8. Add content to example.txt.
echo "Hello Universe" > example.txt

# 9. Display the file content.
# Using cat instead of less allows the script to continue automatically.
cat example.txt

# 10. Make example.txt executable.
chmod +x example.txt

# 11. Compress the subdirectory.
tar -czvf archive.tar.gz subdir

# 12. Extract the archive.
tar -xzvf archive.tar.gz

# 13. Create an infinite-loop Bash script.
cat > loop.sh <<'EOF'
#!/bin/bash

while true
do
    echo "Looping..."
    sleep 1
done
EOF

chmod +x loop.sh

# 14. Run the loop in the background and stop it after five seconds.
./loop.sh &
pid=$!

sleep 5
kill "$pid"

# 15. Initialise a Git repository.
git init

# 16. Stage example.txt.
git add example.txt

# A Git commit requires the user's Git name and email to be configured.
git commit -m "Initial commit"

# 17. Example SCP syntax—intentionally not executed:
# scp -P 53 username@192.157.245.32:/image.jpg .

# 18. Return home and remove the practice directory.
cd ~
rm -rf practice
