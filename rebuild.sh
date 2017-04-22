cd ~/code/hesaff
./unix_build.sh
cp build/libhesaff.so ~/code/hotspotter/hstpl/extern_feat/

zenity --info --text='All done rebuilding and moving hesaff.'
