echo '********** wf.rb **********'
echo

if test -f wf.rb
    then
    ./wf.rb <  | sort -n -k2
fi

