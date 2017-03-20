#!/bin/bash
cd def
yarn
yarn run clean
yarn build
yarn publishLocal
cd ../use
yarn
yarn build # crash!
