# misc-scripts
miscellaneous short programs, scripts, configs, etc.

## alt-ijkl-to-arrows.ahk
Autohotkey script that causes the ijkl keys to act like the arrow keys when
the alt key is held down. This allows for keeping of hands in the touch typing
position when wanting to do things that would normally require arrow keys. (such as select something
from the list of possibilities when using code autocompletion)

## umlauts.ahk
Autohotkey script designed for use with the duolingo German language tree.
maps alt + a, o, u, s to ä, ö, ü, ß

## venv-helpers.ps1
Command aliases to be able to run python and pip in whatever virtual environment is stored in the current
directory without having to "activate" the environment. Aims to prevent the problem of forgetting to
activate environments (inspired by how npm works - if run anywhere with a package.json it by default installs
packages locally).

Based on the venv docs which say:

"You don’t specifically need to activate an environment; activation just prepends the virtual environment’s 
binary directory to your path, so that “python” invokes the virtual environment’s Python interpreter 
and you can run installed scripts without having to use their full path. 
However, all scripts installed in a virtual environment should be runnable without activating it, 
and run with the virtual environment’s Python automatically."

so this creates the aliases
- "epy" (for Environment's PYthon) - which executes the python interpreter at ./env/Scripts/python
- "epi" (for Environment's PIp) - which runs the version of pip at ./env/Scripts/pip

Also a convenience function for making a virtual env in the current directory as well as setting the
workspace python path for visual studio code to use it.

Wee warning that as of writing this has only been used in toy projects.

It is possible to make these commands available at startup by adding them to a powershell profile

## timestamper.ahk

makes a hotkey for autotyping out the current time in both local zone and UTC

intended to be used to make keeping logs easier