#!/bin/bash
socat TCP-LISTEN:1024,reuseaddr,fork EXEC:"java -jar soda.jar"
