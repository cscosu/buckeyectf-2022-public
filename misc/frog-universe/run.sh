#!/bin/bash
socat TCP-LISTEN:1024,reuseaddr,fork EXEC:"python maze.py"
