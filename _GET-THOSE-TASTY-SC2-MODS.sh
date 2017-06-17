#!/bin/bash

# by Mike Limberger
# One night I needed some hot Starcon2 action, thus this was born!

# You need cURL and perl on your system in your PATH for this to work (you most likely have this.)

curl -sSL http://wiki.uqm.stack.nl/Star_Control_Music \
| ruby -077 -nle '$_.scan(%r{(?<=href=")https?://[^"]+\.mod}) { |m| puts m }' \
| xargs -n1 wget --random-wait

# p.s This code is super britle (Some say the way I like it!)
