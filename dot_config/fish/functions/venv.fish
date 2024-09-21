function venv --description "Create or activate a Python virtual environment"
    if not test -d .venv
        echo "Creating a new virtual environment..."
        python3 -m venv .venv --upgrade-deps
    end

    if test -e .venv/bin/activate.fish
        echo "Activating virtual environment..."
        source .venv/bin/activate.fish
        python --version
    end
end
