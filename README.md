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
