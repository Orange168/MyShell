#!/bin/bash
foo (){
    local FOO="bar"
}
bar ()
{
    foo
    echo $FOO
}
bar  # Prints nothing.
