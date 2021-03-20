# Recipes

The raw recipes are in Markdown form and can be found in the `md/` directory.

## Converting to HTML

### Dependencies

 - node.js / npm (run `npm ci` in `pug/` directory)
 - `markdown` binary from e.g. discount

### Render script

```
./rend.sh MD_FILES...
```

Running `./rend.sh md/*.md`
will create an `out/` directory and fill it with one HTML file for each recipe in the `md/` directory.

