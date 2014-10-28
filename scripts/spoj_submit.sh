#!/bin/bash
if [[ "$#" == "0" ]]; then
    echo "Usage: spoj_submit <problemcode>"
    echo "e.g. $ spoj_submit frequent"
    echo "Where problemcode is all lowercase and your source file is called frequent.cpp"
    echo "OR"
    echo "spoj_submit <problemcode> <filename>"
    echo "Where filename is the relative or full path to the source file"
    echo "e.g. $ spoj_submit frequent main.cpp"
elif [[ "$#" == "1" ]]; then
    source ~/.secrets
    problemcode=`echo $1 | tr [a-z] [A-Z]`
    if [[ -n "$spoj_lang" ]]; then
        curl --silent -d "login_user=$spoj_username&password=$spoj_password&problemcode=$problemcode&lang=$spoj_lang" \
            --data-urlencode "file@$1.cpp" --url http://www.spoj.com/submit/complete/ -o /dev/null
    else
        curl --silent -d "login_user=$spoj_username&password=$spoj_password&problemcode=$problemcode&lang=41" \
            --data-urlencode "file@$1.cpp" --url http://www.spoj.com/submit/complete/ -o /dev/null
    fi
    open http://www.spoj.com/status/
else
    source ~/.secrets
    problemcode=`echo $1 | tr [a-z] [A-Z]`
    if [ -n "$spoj_lang" ]; then
        curl --silent -d "login_user=$spoj_username&password=$spoj_password&problemcode=$problemcode&lang=$spoj_lang" \
            --data-urlencode "file@$2" --url http://www.spoj.com/submit/complete/ -o /dev/null
    else
        curl --silent -d "login_user=$spoj_username&password=$spoj_password&problemcode=$problemcode&lang=41" \
            --data-urlencode "file@$2" --url http://www.spoj.com/submit/complete/ -o /dev/null
    fi
    open http://www.spoj.com/status/
fi
