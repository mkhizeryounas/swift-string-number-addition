func strToNum(str: String) -> UInt32 {
    // ascii helper -> "0" = 48 && "9" = 57 | "+" = 43
    let arr = str.map { String($0) }
    var num:UInt32 = 0
    for item in arr  {
        let asciiVal = UnicodeScalar(item)!.value
        if(asciiVal < 48 || asciiVal > 57) {
            continue
        }
        num = (num*10)+(asciiVal-48)
    }
    return num
}

func strAddition(str1:String, str2:String) -> String {
    // assuming + sign does not work but += sign does work!!!
    var res:UInt32 = strToNum(str: str1)
    res += strToNum(str: str2)
    return String(res)
}

print(strAddition(str1:"3", str2: "3"))
