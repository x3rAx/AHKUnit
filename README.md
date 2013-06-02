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

For now it's just enough to have simple tests as described above but in the
future, I'm going to write a more complex test framework which will count
successfull and failed tests aswell as assertions and presents detailed
information to the user.




Installation
------------

In your project, create a folder named e.g. `tests/` and inside, clone this
repository:

    git clone git@github.com:x3ro89/AHKUnit.git "[AHKUnit]"

<strike>You can name the project folder of AHKUnit as you desire but I prefere a folder
name that distinguishes from the others.</strike>

For now the name of the project folder of AHKUnit must be `[AHKUnit]` as
AutoHotkey is not capable of dynamic includes.

When you done so, create an AutoHotke (`.ahk`) file in your `tests/` directory
and name it something like `[RunTests].ahk`. This is the file where you include
AHKUnit and all your tests.

Here's an example of the `[RunTests].ahk`:

    #Include ./AHKUnit/AHKUnit.ahk

    ; ===== Tests ==================
    #Include ./<yourFile>Test.ahk

    ; --- Display test results -----
    testResults()

It's good practice to name the test files the same as your file you want to be
tested and append "Test". E.g. `myLibraryTest.ahk`





<!-- Links -->

[jsonParser]: https://github.com/x3ro89/AHK-JSON
