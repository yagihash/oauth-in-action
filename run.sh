#!/bin/sh
npm i
nodemon authorizationServer.js &
nodemon client.js
