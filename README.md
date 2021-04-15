# XSLT

A collection of XSLT transformations for srcML

## Replace Name

Replace the name. Full name must match.

Use replaceName.xsl

* `prevname` - Current name
* `newname` - Replaced name

After download of replaceName.xsl, sample command to replace `foo` with `bar` in the current directory tree:

```console
srcml . --xslt replaceName.xsl \
        --xslt-param prevname="doc" \
        --xslt-param newname="document" \
        | srcml --to-dir .
```
