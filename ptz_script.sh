#!/bin/sh
curl "http://192.168.0.232/media/?action=cmd&code=2&value=${1}&user=admin&pwd="
sleep .2
curl "http://192.168.0.232/media/?action=cmd&code=3&value=${1}&user=admin&pwd="
date >> /tmp/a

