#!/bin/sh


#build latest
rm -rf microweber-latest/
composer create-project microweber/microweber microweber-latest 1.0.x-dev --prefer-dist --no-dev --no-plugins --no-scripts --ignore-platform-reqs
rm -f microweber-latest.zip
zip -r microweber-latest.zip microweber-latest


#build update
rm -rf microweber-update/
composer create-project microweber/microweber microweber-update 1.0.x-dev --prefer-dist --no-dev --no-plugins --no-scripts --ignore-platform-reqs
rm -f microweber-update.zip
rm -rf microweber-update/app
rm -rf microweber-update/config
rm -rf microweber-update/resources
rm -rf microweber-update/database
rm -rf microweber-update/bootstrap
rm -rf microweber-update/tests
rm -rf microweber-update/storage
rm -rf microweber-update/cache
rm -rf microweber-update/.htaccess
rm -rf microweber-update/favicon.ico

zip -r microweber-update.zip microweber-update