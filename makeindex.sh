#!/bin/bash
cat <<!EOF >index.md
## Full document

[full document](https:all.html)

## Index of rules

!EOF

for i in 6*.html
do
  base=`basename "$i" .html`
  echo "[$base](https:$i)" >> index.md
  echo "" >> index.md # provide separate lines
done
