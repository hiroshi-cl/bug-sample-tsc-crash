#!/bin/bash
cd def
npm install
npm run clean
npm run build
npm run publishLocal
cd ../use
npm install
npm run build # crash!
