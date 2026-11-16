#!/bin/bash

##############################################################################
# Copyright (c) 2026 Connor R. Beeney                                        #
#                                                                            #
# Permission to use, copy, modify, and/or distribute this software for       #
# any purpose with or without fee is hereby granted.                         #
#                                                                            #
# THE SOFTWARE IS PROVIDED “AS IS” AND THE AUTHOR DISCLAIMS ALL              #
# WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES   #
# OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE     #
# FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY         #
# DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN #
# AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT    #
# OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.          #
##############################################################################

here="`readlink -f $(dirname ${BASH_SOURCE[0]})`"
this="`basename ${BASH_SOURCE[0]} .util.sh`"

# Load utility functions
source $here/$this/*.util.sh

# 192 136 180
_DisplayInfo() {
    _SetColour custom 100 190 180
        echo -ne "I: $1"
        if [ "$2" != "--no-newline" ]; then echo -ne "\n"; fi
    _SetColour reset
}
_DisplayTrace() {
    _SetColour custom 60 60 60
        echo -ne "T: $1"
        if [ "$2" != "--no-newline" ]; then echo -ne "\n"; fi
    _SetColour reset
}
_DisplayWarning() {
    _SetColour custom 200 130 15
        echo -ne "W: $1"
        if [ "$2" != "--no-newline" ]; then echo -ne "\n"; fi
    _SetColour reset
}
_DisplayError() {
    _SetColour red
        echo -ne "E: $1"
        if [ "$2" != "--no-newline" ]; then echo -ne "\n"; fi
    _SetColour reset
}