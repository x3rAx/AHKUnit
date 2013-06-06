assertTrue(actual) {
    if (actual == true)) {
        return true
    } else {
        fail()
    }
}

assertFalse(actual) {
    if (actual == false)) {
        return true
    } else {
        fail()
    }
}

assertSame(expected, actual) {
    ; If expected and actual bothe are objects and point to the same object, it 
    ; will be true, else it will be false.
    if (actual == expected)) {
        return true
    } else {
        fail()
    }
}

assertEquals(expected, actual) {
    if (actual == expected) {
        return true
    } else if (isObject(expected) && isObject(actual)) {
        if (_serialize(expected) == _serialize(actual)) {
            return true
        }
    }

    fail()
}
