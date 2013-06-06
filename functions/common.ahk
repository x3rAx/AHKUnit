fail() {
    global Test

    MsgBox Test failed:`n    %Test%
    ExitApp
}

testResults() {
    global success
    
    MsgBox %success% Tests successful! :)
    ExitApp
}

_escape(str) {
    StringReplace, str, str, \, \\, All
    StringReplace, str, str, ", \",   All
    return str
}

_serialize(obj) {
    if (isObject(obj) == false) {
        throw "Not an object: " . obj
        return false
    }

    serialized := "{ "

    for key,value in obj {
        if key is integer
        {
            serialized .= key . ": "
        } else {
            serialized .= """" . _escape(key) . """: "
        }

        if (isObject(value)) {
            serialized .= _serialize(value)
        } else {
            if value is number
            {
                serialized .= value
            } else {
                serialized .= """" . _escape(value) . """"
            }

            serialized .= ", "
        }
    }

    serialized .= "} "

    return serialized
}