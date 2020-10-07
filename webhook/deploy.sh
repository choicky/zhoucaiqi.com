#!/bin/bash

# deploy by webhook

# user config
USER='www-data'
USERGROUP='www-data'

# path config
repo_path="/var/www/zhoucaiqi.com"
web_root="/var/www/zhoucaiqi.com/public"

# git pull
cd $repo_path
git clean -f
git pull
git submodule update --remote

# hugo 
chown -R $USER:$USERGROUP $repo_path
hugo -s $repo_path -d $web_root

