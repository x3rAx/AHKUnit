assertTrue(actual) {
    ret := assertEquals(true, actual)
    return ret
}

assertFalse(actual) {
    ret := assertEquals(false, actual)
    return ret
}

assertSame(expected, actual) {
    ; If expected and actual bothe are objects and point to the same object, it 
    ; will be true, else it will be false.
    if (actual == expected) {
        return true
    } else {
        fail("Expected: " . expected . "`nActual: " . actual)
    }
}

assertEquals(expected, actual) {
    if (actual == expected) {
        return true
    } else if (isObject(expected) && isObject(actual)) {
        if (_serialize(expected) == _serialize(actual)) {
            return true
        } else {
            fail("Objects not equals")
        }
    }

    fail("Expected: " . expected . "`nActual: " . actual)
}
