#!/bin/bash

[ ! -d out ] && mkdir out

while [ $# -gt 0 ] ; do
    echo "Rendering $1" >&2
    cat $1 | markdown > pug/recipe-body.html || exit 1
    PATH="$(pwd)/pug/node_modules/.bin:$PATH" pug -P -s -O "{\"title\":\"$1\", \"doctype\":\"html\"}" pug/recipe.pug || exit 1
    mv pug/recipe.html out/$(basename ${1%.md}.html) || exit 1
    shift 1
done

[ -f pug/recipe-body.html ] && rm pug/recipe-body.html

