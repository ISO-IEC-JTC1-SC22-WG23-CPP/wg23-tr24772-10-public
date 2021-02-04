#!/bin/bash
cat <<!EOF >index.md
## Full document

[full document](https:all.html)

## non-rule parts

[3.terms](https:3.terms.html)<br/>
[4.concepts](https:4.concepts.html)<br/>
[5.avoiding](https:5.avoiding.html)<br/>


## Index of rules

!EOF

for i in 6*.html
do
  base=`basename "$i" .html`
  echo "[$base](https:$i)<br/>" >> index.md
done
