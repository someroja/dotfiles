status is-interactive || exit

if type --query fnm
    fnm env | source
else
    echo "fnm not installed!"
end
