#!/bin/bash
cd data
cat np.paragraphs | sed -e '/[०१२३४५६७८९]/d' -e 's/,//g' -e "s/।//g" -e 's/  / /g' -e 's/ /\n/g' -e '/^$/d' | sed '/^$/d' > np.words
