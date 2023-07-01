#!/bin/bash
ps eaf | grep node > /dev/null
if [ $? -eq 0  ]; then
    echo "Process is running." >/dev/null 2>&1
else
    echo "Process is not running."
    PATH=$PATH:/usr/local/bin
    /usr/local/rvm/gems/ruby-2.6.3/bin/rails server -b 0.0.0.0 -p 3000
fi
