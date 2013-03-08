# Runs tests for this project.
# [needs Racket in $PATH]

# File containing tests
testfile="tests.rkt"

if [ "${1}" = "-d" ]; then
    # Debug Option
    racket "${testfile}";
else
    # Redirect error to screen and output to '/dev/null'
    racket "${testfile}" 2>&1 1>/dev/null
fi


