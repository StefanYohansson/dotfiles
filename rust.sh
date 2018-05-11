#!/bin/bash

[[ -s /home/snotr/.rsvm/rsvm.sh ]] && . /home/snotr/.rsvm/rsvm.sh
curl -L https://raw.github.com/sdepold/rsvm/master/install.sh | sh
rsvm install stable && cargo install racer
