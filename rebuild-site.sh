#!/bin/bash
echo -e "----- git pull fx-website \n"
git pull
echo -e "\n\n"

echo -e "----- git pull xiv-guides \n"
git --git-dir=../xiv-guides/.git --work-tree=../xiv-guides/ pull
echo -e "\n\n"

echo -e "----- deleting site"
rm -rf build/site
rm -rf /var/www/faxxter/*
echo -e "\n\n"

echo -e "----- generating new site"
npx antora antora_playbook.yml --fetch

echo -e "----- copying data"
cp -r build/site/* /var/www/faxxter
