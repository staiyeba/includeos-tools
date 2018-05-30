
# installing gcc eversion 7.1 as needed

sudo add-apt-repository ppa:jonathonf/gcc-7.1
sudo apt-get update
sudo apt-get install gcc-7 g++-7

# installing httperf from source

sudo apt-get install autoconf
wget https://github.com/rtCamp/httperf/archive/master.zip
unzip master.zip
cd httperf-master
autoreconf -i
mkdir build
cd build
../configure
make
make install


# this output shows max no. of open descriptors
httperf -v | grep open
