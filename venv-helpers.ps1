# set some aliases that will use python and pip based on the environment
# stored in an "env" subfolder of the current directory - whether or not that environment has been "activated" or not.
#
# from the venv docs: https://docs.python.org/3/library/venv.html
#
# "You don’t specifically need to activate an environment; activation just prepends the virtual environment’s 
# binary directory to your path, so that “python” invokes the virtual environment’s Python interpreter 
# and you can run installed scripts without having to use their full path. 
# However, all scripts installed in a virtual environment should be runnable without activating it, 
# and run with the virtual environment’s Python automatically."
#
# this would imply that if one was to directly type the relative path to the environment when using python and
# pip - one could get the same benefits of virtual environments without having to manually activate them (which
# one could be prone to forgetting to do ;) )
#
# thus, create command aliases for the relative paths to the environment  in the current directory. Trying
# essenially to make venv+pip work in a way similar to the default behaviour of npm.
#
# Warning: I've only used this when making small toy projects in python. Haven't came across any issues yet,
# but may not work in all edge cases (e.g. not sure what would happen if the python program being run spawned a child
# process, and the child process looked for what environment is active?)
#
# It is possible to make these commands available at startup by adding them to a powershell profile
Set-Alias epy ./env/Scripts/python # epy stands for "Environment's PYthon"
Set-Alias epi ./env/Scripts/pip # epi stands for Environment's PIp"

# makes a new env directory in the current direcctory, and a .vscode directory
# with a settings.json file that tells vscode to use the python path in the env
# directory
function Init-Python-App {
    py -m venv ./env
	epy -m pip install --upgrade pip
    New-Item -Path .\.vscode -ItemType directory
    $vscodeConfig = '{ "python.pythonPath": "./env/Scripts/python" }'
    New-Item -Path .\.vscode\settings.json -ItemType file
    Add-Content .\.vscode\settings.json $vscodeConfig
}

# alias for the 
Set-Alias mkpyapp Init-Python-App