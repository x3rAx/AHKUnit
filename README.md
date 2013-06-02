AHKUnit
=======

AHKUnit is a (very) simple test semi-framework for
[AutoHotkey](http://autohotkey.com/)-scripts. It emerged when I was about to
write a [JSON parser][jsonParser] and needed a way to test functionality.

The tests are (at the moment) extremely minimalistic and do only support a
minimum of assertion functions. In fact a test is nothing more than a view lines
of code, encapsulated in a code-block (`{ ... }`), a variable for the current
test name and an upcountin variable for the result.

A test skeleton looks like this:

    { Test := "Name of the test"
        ; Testcode here
    } success++

This really is nothing special but it does its job.




Currently under development
---------------------------

*On branch `develop` you can find my current development progress.*

For now it's just enough to have simple tests as described above but in the
future, I'm going to write a more complex test framework which will count
successfull and failed tests aswell as assertions and presents detailed
information to the user.





<!-- Links -->

[jsonParser]: https://github.com/x3ro89/AHK-JSON
