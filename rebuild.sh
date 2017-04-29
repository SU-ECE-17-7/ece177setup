cd ~/code/hesaff
./unix_build.sh
cp build/libhesaff.so ~/code/hotspotter/hstpl/extern_feat/

# build flann... yum
cd ~/code/flann
./unix_build.sh

# Go back to the parent dir
cd ~/code

zenity --info --text='All done rebuilding and moving hesaff.'
