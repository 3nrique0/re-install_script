#! /bin/bash


## UPDATE COMPUTER
sudo apt-get update && sudo apt-get upgrade

### It will probably be necessary to reboot the computer now
### This will install the packages that were heald back
### source: https://askubuntu.com/questions/601/the-following-packages-have-been-kept-back-why-and-how-do-i-solve-it#602
sudo apt-get update && sudo apt-get --with-new-pkgs upgrade

### Probably another reboot will be necessary


######################################################################

## INSTALL BASICS

### Internet and connectivity
sudo apt-get install openssh-server
sudo apt-get install firefox

### Programming, Compiling
sudo apt-get install build-essential
sudo apt-get install geany
sudo apt-get install virtualenv
sudo apt-get install autoconf autotools-dev 
sudo apt-get install libbz2-1.0  liblzma5  libcurl4-gnutls-dev

### Keeping track of work load and sessions distantly
sudo apt-get install htop
sudo apt-get install tmux

### Read different partition types & Partition modifier software
sudo apt-get install exfat-fuse exfat-utils
sudo apt-get install gparted

### INSTALL ALTERNATIVE DESKTOP ENVIRONMENTS
### This will allow to chose the desktop manager when logging in.
### Reboot is probably necessary
sudo apt-get install lightdm


######################################################################

## INSTALL TOOLS FOR DATA ANALYSES AND BIOINFORMATICS
sudo apt-get install fastqc
sudo apt-get install parallel

### Make a directory to compile software
### Installs are made system-wide for all users:
mkdir -p ~/bin


### SAMTOOLS, BCFTOOLS, HTSLIB
### source https://www.htslib.org/download/
### versions:
### 	htslib:		1.10.2
### 	samtools:	1.10
### 	bcftools:	1.10.2
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
tar -xvf samtools-1.10.tar.bz2
cd ~/bin/samtools-1.10/
./configure
make
sudo make install

cd ~


### TRINITY
### Install instructions from: https://github.com/trinityrnaseq/trinityrnaseq/wiki
### version: Trinity-v2.9.0 Dec 11, 2019
### requires: bowtie2, salmon, jellyfish
cd ~/bin
wget https://github.com/trinityrnaseq/trinityrnaseq/releases/download/v2.9.0/trinityrnaseq-v2.9.0.FULL.tar.gz 
tar -xzvf trinityrnaseq-v2.9.0.FULL.tar.gz
cd trinityrnaseq-v2.9.0
ln -s $PWD/Trinity /usr/local/bin/



### BOWTIE
### source: http://bowtie-bio.sourceforge.net/bowtie2/index.shtml
### https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.3.5.1/
### version: bowtie2-2.3.5.1-linux-x86_64.zip
cd ~/bin
unzip bowtie2-2.3.5.1-linux-x86_64.zip
cd bowtie2-2.3.5.1-linux-x86_64
sudo ln -s /home/geeteam/bin/bowtie2-2.3.5.1-linux-x86_64/bowtie2* /usr/local/bin/


### JELLYFISH
### source: https://github.com/gmarcais/Jellyfish/releases
### version: Version 2.3.0
cd ~/bin
wget https://github.com/gmarcais/Jellyfish/releases/download/v2.3.0/jellyfish-2.3.0.tar.gz 
tar -xzvf jellyfish-2.3.0.tar.gz
cd jellyfish-2.3.0
./configure
make
sudo make install


### SALMON
### source: https://github.com/COMBINE-lab/salmon/releases
cd ~/bin
wget https://github.com/COMBINE-lab/salmon/releases/download/v1.1.0/salmon-1.1.0_linux_x86_64.tar.gz 
tar -xzvf salmon-1.1.0_linux_x86_64.tar.gz 
cd salmon-latest_linux_x86_64/
sudo ln -s $PWD/bin/salmon /usr/local/bin/


### BLAST+ NCBI
### source: ftp://ftp.ncbi.nlm.nih.gov/blast/executables/LATEST/ncbi-blast-2.10.0+-x64-linux.tar.gz
### version: 2.10.0
cd ~/bin
wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/LATEST/ncbi-blast-2.10.0+-x64-linux.tar.gz
tar -xzvf ncbi-blast-2.10.0+-x64-linux.tar.gz 
cd ncbi-blast-2.10.0+
sudo ln -s /home/geeteam/bin/ncbi-blast-2.10.0+/bin/*  /usr/local/bin/



######################################################################



### INSTALL R AND PACKAGES REQUIRED TO INSTALL R LIBRARIES

### R 4.0.x installation
### source: https://cran.r-project.org/
### To make work the gpg key from CEFE it requires to be specified a port
sudo echo -e '\ndeb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' >> /etc/apt/sources.list
sudo echo '# deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' >> /etc/apt/sources.list file
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



