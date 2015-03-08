#!/usr/bin/env bash

sudo su

cd /tmp
wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p353.tar.gz
tar -xvzf ruby-2.0.0-p353.tar.gz
cd ruby-2.0.0-p353/
./configure --prefix=/usr/local
make
sudo make install

apt-packages-install \
  rake               \
  rbenv

# apt-packages-install \
  #ruby1.9.1          \
  #ruby1.9.1-dev      \
  #rubygems1.9.1      \
#alternatives-ruby-install 1.9.1

#curl -L get.rvm.io | bash -s stable --auto
#curl -L https://get.rvm.io | bash -s -- --auto-dotfiles

ruby-gems-install pkg-config
ruby-gems-install sass
ruby-gems-install compass
ruby-gems-install bundler
ruby-gems-install railsless-deploy
ruby-gems-install rvm-capistrano