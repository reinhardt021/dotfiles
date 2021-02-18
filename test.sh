mydir='/usr/local/go/bin'
if [ -d $mydir ]; then
    echo "it exists";
fi
if [ ! -d $mydir ]; then
    echo "it does not exists";
fi
