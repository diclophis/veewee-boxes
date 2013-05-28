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

        http://closure-compiler.googlecode.com/files/compiler-latest.zip
        http://http.us.debian.org/debian/pool/main/b/binfmt-support/binfmt-support_2.0.14_amd64.deb
        http://http.us.debian.org/debian/pool/main/c/cloog-ppl/libcloog-ppl1_0.16.1-2_amd64.deb
        http://http.us.debian.org/debian/pool/main/c/cloog/libcloog-isl4_0.18.0-2_amd64.deb
        http://http.us.debian.org/debian/pool/main/e/eglibc/libc-bin_2.17-3_amd64.deb
        http://http.us.debian.org/debian/pool/main/e/eglibc/libc-dev-bin_2.17-3_amd64.deb
        http://http.us.debian.org/debian/pool/main/e/eglibc/libc6-dev_2.17-3_amd64.deb
        http://http.us.debian.org/debian/pool/main/e/eglibc/libc6_2.17-3_amd64.deb
        http://http.us.debian.org/debian/pool/main/e/eglibc/locales_2.17-3_all.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.7/cpp-4.7_4.7.3-4_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.7/g++-4.7_4.7.3-4_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.7/gcc-4.7-base_4.7.3-4_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.7/gcc-4.7_4.7.3-4_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.7/libgcc-4.7-dev_4.7.3-4_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.7/libstdc++6-4.7-dev_4.7.3-4_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/cpp-4.8_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/gcc-4.8-base_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/gcc-4.8_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libasan0_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libatomic1_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libgcc-4.8-dev_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libgcc1_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libgomp1_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libitm1_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libquadmath0_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libstdc++6_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-4.8/libtsan0_4.8.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gcc-defaults/g++_4.7.2-1_amd64.deb
        http://http.us.debian.org/debian/pool/main/g/gmp/libgmpxx4ldbl_5.1.2+dfsg-1_amd64.deb
        http://http.us.debian.org/debian/pool/main/i/isl/libisl10_0.11.2-1_amd64.deb
        http://http.us.debian.org/debian/pool/main/j/jquery/libjs-jquery_1.7.2+dfsg-2_all.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-defaults/clang_3.2-17_amd64.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-defaults/llvm-runtime_3.2-17_amd64.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-defaults/llvm_3.2-17_amd64.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-toolchain-3.2/clang-3.2_3.2repack-6_amd64.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-toolchain-3.2/libclang-common-dev_3.2repack-6_amd64.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-toolchain-3.2/libclang1_3.2repack-6_amd64.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-toolchain-3.2/libllvm3.2_3.2repack-6_amd64.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-toolchain-3.2/llvm-3.2-runtime_3.2repack-6_amd64.deb
        http://http.us.debian.org/debian/pool/main/l/llvm-toolchain-3.2/llvm-3.2_3.2repack-6_amd64.deb
        http://http.us.debian.org/debian/pool/main/libf/libffi/libffi6_3.0.13-4_amd64.deb
        http://http.us.debian.org/debian/pool/main/m/mpclib3/libmpc3_1.0.1-1_amd64.deb
        http://http.us.debian.org/debian/pool/main/m/mpfr4/libmpfr4_3.1.1-1_amd64.deb
        http://http.us.debian.org/debian/pool/main/p/ppl/libppl-c4_1.0-7_amd64.deb
        http://http.us.debian.org/debian/pool/main/p/ppl/libppl12_1.0-7_amd64.deb
