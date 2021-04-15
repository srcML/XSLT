# XSLT

A collection of XSLT transformations for srcML

## Replace Name

Replace the name. Full name must match.

Use replaceName.xsl

* `prevname` - Current name
* `newname` - Replaced name

Sample command to replace `foo` with `bar` in the current directory tree:

```console
srcml . --xslt https://raw.githubusercontent.com/srcML/XSLT/master/replaceName.xsl \
        --xslt-param prevname="doc" \
        --xslt-param newname="document" \
        | srcml --to-dir .
```
