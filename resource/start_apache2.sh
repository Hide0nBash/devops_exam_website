#!/bin/bash

# run apache2
service apache2 start

# never exit，此处是为了运行完上条应用服务后，有对应的前台进程
tail -f /dev/null