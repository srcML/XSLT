# XSLT

A collection of XSLT transformations for srcML.

The XSLT is written from the perspective of a single source-code file.
When used with the srcML client `srcml`, the XSLT is individually applied to each file
in an archive.

## Replace Name

Replace the name. Full name must match.

Use replaceName.xsl

* `prevname` - Current name
* `newname` - Replaced name

After download of replaceName.xsl, sample command to replace `foo` with `bar` in the current directory tree:

```console
srcml . --xslt replaceName.xsl \
        --xslt-param prevname="foo" \
        --xslt-param newname="bar" \
        | srcml --to-dir .
```
