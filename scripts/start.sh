#!/bin/bash
while true; do 
  echo -e "HTTP/1.1 200 OK\n\n Hello World!" | nc -v -l -p 80 -q 1  # By default listens to all network interfaces
done
