#! /bin/bash


## UPDATE COMPUTER
sudo apt-get update && sudo apt-get upgrade

### It will probably be necessary to reboot the computer now
### This will install the packages that were heald back
### source: https://askubuntu.com/questions/601/the-following-packages-have-been-kept-back-why-and-how-do-i-solve-it#602
sudo apt-get update && sudo apt-get --with-new-pkgs upgrade

### Probably another reboot will be necessary



## INSTALL BASICS

### Internet and connectivity
sudo apt-get openssh-server
sudo apt-get install firefox

### Programming, Compiling
sudo apt-get install build-essential
sudo apt-get geany
sudo apt-get install virtualenv
sudo apt-get install autoconf autotools-dev 
sudo apt-get install libbz2-1.0  liblzma5  libcurl4-gnutls-dev


### Keeping track of work load and sessions distantly
sudo apt-get install htop
sudo apt-get install tmux

### Read different partition types & Partition modifier software
sudo apt-get install exfat-fuse exfat-utils
sudo apt-get install gparted


### INSTALL TOOLS FOR DATA ANALYSES AND BIOINFORMATICS
sudo apt-get install fastqc
sudo apt-get install parallel

### samtools, bcftools, htslib
# sudo apt-get  install  autoconf  autotools-dev
# sudo apt-get install libbz2-1.0  liblzma5  libcurl4-gnutls-dev
cd ~/bin
wget https://github.com/samtools/htslib/releases/download/1.10.2/htslib-1.10.2.tar.bz2
tar -xvf htslib-1.10.2.tar.bz2
cd ~/bin/htslib-1.10.2/
./configure
make
sudo make install

cd ~/bin
wget https://github.com/samtools/bcftools/releases/download/1.10.2/bcftools-1.10.2.tar.bz2
tar -xvf samtools-1.10.tar.bz2
cd ~/bin/samtools-1.10/
./configure
make
sudo make install

cd ~/bin
wget https://github.com/samtools/samtools/releases/download/1.10/samtools-1.10.tar.bz2
tar -xvf bcftools-1.10.2.tar.bz2
cd ~/bin/bcftools-1.10.2/
./configure
make
sudo make install

cd ~


### INSTALL R AND PACKAGES REQUIRED TO INSTALL R LIBRARIES

### R 3.6.x installation
### source: https://cran.r-project.org/
### To make work the gpg key from CEFE it requires to be specified a port
sudo echo -e '\ndeb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' >> /etc/apt/sources.list
sudo echo '# deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' >> /etc/apt/sources.list file
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo apt-get update
sudo apt-get install r-base

### Packages required to compile R libraries
sudo apt-get install libcurl4-openssl-dev libxml2-dev libssl-dev


### Installing BioConductor && Packages from BioConductor
### source: https://bioconductor.org/install/
### this section is only R code, therefore it's commented with a single "#"
# if (!requireNamespace("BiocManager", quietly = TRUE))
#     install.packages("BiocManager")
# BiocManager::install(version = "3.10")
# 
# BiocManager::install('')      # This will update the r-core packages to BioConductor's standards
# BiocManager::install('devtools')
# BiocManager::install('DESeq2')
# BiocManager::install('edgeR')


### INSTALL ALTERNATIVE DESKTOP ENVIRONMENTS
### This will allow to chose the desktop manager when logging in.
sudo apt-get install lightdm

