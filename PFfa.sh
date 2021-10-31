#!/bin/sh

set -e

[ $# -eq 1 ] || { echo "usage: `basename $0` pkgname" >&2 ; exit 1 ; }

PKG="$1"

CRIGHT="/usr/share/doc/$PKG/copyright"
[ -r "$CRIGHT" ] || { echo "Coudln't read $CRIGHT" >&2 ; exit 1 ; }
echo "Verified readable $CRIGHT"
