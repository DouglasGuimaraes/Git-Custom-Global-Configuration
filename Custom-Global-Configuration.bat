@echo off

:start 
   set /p answer=Do you want to install OR uninstall git helper (I/U)?
   if /i "%answer:~,1%" EQU "I" goto install
   if /i "%answer:~,1%" EQU "U" goto uninstall
   echo Please type I for Install or U for Uninstall
   goto start

:install 
    git config --global core.editor "code --wait"
    git config --global alias.df diff
    git config --global alias.st status
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.lg "!git log --all --graph --decorate --oneline --abbrev-commit"
    set /p name=Git user name?
    git config --global user.name "%name%"
    set /p email=Git user e-mail?
    git config --global user.email "%email%"
    git config --global -e
    exit

:uninstall 
    git config --global --unset core.editor
    git config --global --unset alias.df
    git config --global --unset alias.st
    git config --global --unset alias.co
    git config --global --unset alias.br
    git config --global --unset alias.lg 
    git config --global user.name ""
    git config --global user.email ""
    git config --global -e
    exit


