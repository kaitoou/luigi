import nimdata
import nimdata/utils
import neo
import sequtils
import strutils
import times, os
import options
import nre
import system
import parseutils, math, algorithm, unicode
import algorithm,tables,hashes,math
import sets,lists,critbits,sequtils,intsets,strutils

proc git_col_len():seq[string]=

    let start = cpuTime()

    let dfRawText = DF.fromFile("/Users/ishikawakaito/luigi/T-TPM.csv")

    echo cputime() - start, " sec"

    const schema = [
    strCol("id"),
    ]
    let df = dfRawText.map(schemaParser(schema, '\t'))
                  
    var name: seq[string] = df.map(record => record.id)
                              .collect()

    #echo name
    
    var length:int64 = df.count()-1
    var ii:int64 = 0
    for i in countup(ii,length):
        var v: seq[string] = name[i].split( re"[,] ?" )
        v.delete(0)
        
        #ここでcos類似の計算

        echo v
    return name #ここは仮



    
    
echo git_col_len()

#@["2.01043", "0", "41.8996"]
#@["0", "0.200049", "21.9467"]
#@["0", "0", "25.1586"]
#@["0", "0", "17.9916"]






