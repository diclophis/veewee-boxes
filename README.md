# Intent

Build a virtual machine that can be used as a Vagrant box, but also be able to be exported to EC2

# Setup

1. Building the base box:

        bundle install
        bundle exec veewee vbox define 'risingcode' debian-7.0-amd64-netboot
        bundle exec veewee vbox build 'risingcode'
        ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 7222 -l vagrant 127.0.0.1
        bundle exec veewee vbox export 'risingcode'

1. Import it into vagrant:

        vagrant box add 'risingcode' 'risingcode.box'
        vagrant init 'risingcode'
        vagrant up
        vagrant ssh

# Research

* https://github.com/jedi4ever/veewee/blob/master/doc/vagrant.md
* http://www.ioncannon.net/system-administration/1246/converting-from-virtualbox-or-vmware-to-ec2-now-easier-than-ever/
* http://www.niftiestsoftware.com/2011/09/24/converting-a-virtualbox-vm-to-an-ec2-ami/

# ETC

        vagrant@risingcode:~$ sudo apt-get install git libcurl3-gnutls liberror-perl git-man rsync

:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.7/gcc-4.7_4.7.3-4_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 5676k  100 5676k    0     0   453k      0  0:00:12  0:00:12 --:--:--  327k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.7/gcc-4.7-base_4.7.3-4_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  145k  100  145k    0     0   195k      0 --:--:-- --:--:-- --:--:--  219k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.7/cpp-4.7_4.7.3-4_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 5259k  100 5259k    0     0  1367k      0  0:00:03  0:00:03 --:--:-- 1410k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/c/cloog-ppl/libcloog-ppl1_0.16.1-2_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 69612  100 69612    0     0  81010      0 --:--:-- --:--:-- --:--:-- 94070
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gmp/libgmpxx4ldbl_5.1.2+dfsg-1_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 22742  100 22742    0     0  79720      0 --:--:-- --:--:-- --:--:--  109k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/m/mpclib3/libmpc3_1.0.1-1_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 45796  100 45796    0     0   110k      0 --:--:-- --:--:-- --:--:--  136k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/m/mpfr4/libmpfr4_3.1.1-1_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  531k  100  531k    0     0   165k      0  0:00:03  0:00:03 --:--:--  170k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/p/ppl/libppl-c4_1.0-7_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1467k  100 1467k    0     0   307k      0  0:00:04  0:00:04 --:--:--  327k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/p/ppl/libppl12_1.0-7_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  704k  100  704k    0     0   268k      0  0:00:02  0:00:02 --:--:--  434k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.8/cpp-4.8_4.8.0-7_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 5717k  100 5717k    0     0   444k      0  0:00:12  0:00:12 --:--:--  269k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libgcc-4.8-dev_4.8.0-7_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 2724k  100 2724k    0     0   302k      0  0:00:09  0:00:09 --:--:--  245k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/c/cloog/libcloog-isl4_0.18.0-2_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 72824  100 72824    0     0   142k      0 --:--:-- --:--:-- --:--:--  170k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/i/isl/libisl10_0.11.2-1_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  499k  100  499k    0     0   326k      0  0:00:01  0:00:01 --:--:--  344k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libatomic1_4.8.0-7_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 10226  100 10226    0     0  53088      0 --:--:-- --:--:-- --:--:-- 89701
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libasan0_4.8.0-7_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 76378  100 76378    0     0   167k      0 --:--:-- --:--:-- --:--:--  204k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libtsan0_4.8.0-7_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  116k  100  116k    0     0   214k      0 --:--:-- --:--:-- --:--:--  251k
macbook:clang-3.2 jbardin$ vi ../../README.md 
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/e/eglibc/libc6-dev_2.17-3_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 3064k  100 3064k    0     0   931k      0  0:00:03  0:00:03 --:--:--  968k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/g/gcc-4.7/libstdc++6-4.7-dev_4.7.3-4_amd64.deb
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1634k  100 1634k    0     0   637k      0  0:00:02  0:00:02 --:--:--  657k
macbook:clang-3.2 jbardin$ curl -O http://http.us.debian.org/debian/pool/main/e/eglibc/libc-dev-bin_2.17-3_amd64.deb
