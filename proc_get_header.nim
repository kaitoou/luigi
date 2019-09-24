import csvtools
import regex

import encodings


var utf8data = readFile("/Users/ishikawakaito/luigi/T-TPM.csv").`$`.convert(srcEncoding="shift_jis", destEncoding="utf-8")



writeFile("T-TPM-utf.csv", utf8data)

var header: seq[string]


var count = 0


var schema: seq[string]


block getHeader:
    for row in csvRows("T-TPM-utf.csv"):
        header.add(row)
        inc(count)
        if count == 1:
            break getHeader

for i, col in header:
    if i >= 0 and i <= 4:
        schema.add( col )
    

for s in schema:
    var ss = @[s.replace(re"\(","(\"")]
    echo ss

#@["id"]
#@["NM_000014"]
#@["NM_000015"]
#@["NM_000016"]