#!/bin/sh
npm i -g nodemon
npm i
nodemon authorizationServer.js &
nodemon client.js
