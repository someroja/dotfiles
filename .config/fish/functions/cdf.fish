# cd to active Finder window
function cdf
    set -f target (osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)')
    if test $target!=''
        cd $target
        pwd
    else
        echo 'No Finder window found'
    end
end
