import nimdata
import nimdata/utils

import times, os

import csvtools
import regex

import encodings

proc git_col_len():seq[string]=

    let start = cpuTime()

    let dfRawText = DF.fromFile("/Users/ishikawakaito/luigi/T-TPM.csv")

    echo cputime() - start, " sec"

    const schema = [
    strCol("id"),
    ]
    let df = dfRawText.map(schemaParser(schema, ','))
                  
    var name: seq[string] = df.map(record => record.id)
                              .collect()

    var schem: seq[string]
    
    for i, col in name:
        if i >= 0 and i <= 3:　　#ここの３を変数に変えよ
            schem.add( col )
    

    for s in schem:
        var ss = @[s.replace(re"\(","(\"")]
        echo ss   #個別にid取得

    #echo name
       
    #echo df.count()

    return name

echo git_col_len()

#6.999999999999628e-06 sec
#@["DRR000897", "DRR001173", "DRR001174", "DRR001175"]



