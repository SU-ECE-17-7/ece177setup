# install essential libraries
export CODE_DIR=~/code
sudo apt-get install build-essential
sudo apt-get install libjpeg-dev
sudo apt-get install libtiff5-dev
sudo apt-get install cmake
sudo apt-get install pkg-config
sudo apt-get install python2.7
sudo apt-get install git 		#
sudo apt-get install libqt4-dev
sudo apt-get install python-qt4
sudo apt-get install python-pip		#

### Python libraries ###

# Now we'll pip
# core libraries
sudo pip install Pygments
sudo pip install argparse 
sudo pip install openpyxl
sudo pip install parse
sudo pip install pyreadline
sudo pip install python-dateutil
sudo pip install six

#speed libraries
sudo pip install Cython 
sudo pip install pylru

# interactive libs
sudo pip install ipython
sudo pip install matplotlib
sudo pip install python-qt

# sci libs
sudo pip install pillow
sudo pip install numpy
sudo pip install opencv-python
sudo pip install pandas
sudo pip install scipy

# dev tools
sudo pip install setuptools
sudo pip install pyinstaller
sudo pip install flake8
sudo pip install pep8
sudo pip install pyflakes
sudo pip install pylint

## On to the project ##
## Start with repos  ##
# several of these scripts expect to see stuff in ~/code, so we'll do that
mkdir ~/code
cd ~/code

# FLANN - Fast Library for Approximate Nearest Neighbors
git clone https://github.com/SU-ECE-17-7/flann.git

# Hessian Affine Keypoint Detector
# git clone -b BRANCH https://github.com/SU-ECE-17-7/hesaff.git
git clone https://github.com/SU-ECE-17-7/hesaff.git

# opencv
git clone https://github.com/SU-ECE-17-7/opencv.git

# Main HotSpotter repo
git clone https://github.com/SU-ECE-17-7/hotspotter.git

## Let's build stuff ##

# Build opencv (this takes a looooong time)
cd ~/code/opencv
./unix_build.sh

# Build hesaff
cd ~/code/hesaff
./unix_build.sh
# Some branches have a different name. If it errors, try this:
#~/code/hesaff/unix_hesaff_build.sh

# Move it to the right place
cp ~/code/hesaff/build/libhesaff.so ~/code/hotspotter/hstpl/extern_feat/libhesaff.so

# I guess we need to rename this for some reason?
mv ~/
# build flann... yum
cd ~/code/flann
./unix_build.sh

# Go back to the parent dir
cd ~/code
