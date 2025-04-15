#!/bin/bash

set -x

#SERVICE= "rails"
#if pgrep -x "$SERVICE" >/dev/null
#then
#    echo "$SERVICE is running"
#else
#    echo "$SERVICE is stopped! Restart now.."
    # activate .bashrc
    # activate workon
    # move to path of the project
    # mail
#    cd /home/freelancer/bin
#    rails server -b 0.0.0.0 -p 3000 -d &
    #cd /usr/local/ && /usr/local/rvm/gems/ruby-2.6.3/bin/rails s -b 0.0.0.0 -p 3000 -d &
#fi


#set -x

if lsof -i :3000 >/dev/null; then
    echo "Il server Sgub è già attivo"
else

    # Esegui il server Scrapyd da ambiente virtuale /pyenv
    #/root/.pyenv/shims/scrapyd &

    # Esegui il server Scrapyd da una installazione
    # di default(container)
    cd /home/freelancer/bin
    rails server -b 0.0.0.0 -p 3000 -d &

    # Scrivi un log di attività
    echo "Server Sgub avviato alle $(date) su $(hostname)" >> /home/freelancer/sgub.log

    # Invia una mail di notifica
    echo "Server Sgub avviato alle $(date) su $(hostname)" | mail -s "Avvio del server Sgub" noreply@code4you.cloud

    echo "Avvio del server Sgub"
fi
