#!/bin/bash -x

cd services/app
bundle package --all
ls -l vendor/cache

cd ../..
cp -a services/app .
cd app
bundle install --local
