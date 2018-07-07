
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
# Add Visual Studio Code (code)
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PYTHONPATH=:/Users/jsp/Downloads/testing

# Added by Anaconda3 5.0.1 installer
export PATH="/Users/jsp/anaconda3/bin:$PATH"

# Color directory highlighting
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export EDITOR=/usr/bin/vim                  # Set editor to Vim

shopt -s cdspell;                           # Autocorrect typos in path names when using `cd`

alias cp='cp -iv'                           # Prompt before overwrite
alias mv='mv -iv'                           # Prompt before overwrite

cd() { builtin cd "$@"; ls; }               # List directory contents on cd
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # Go to home directory

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf   $1 -C $2 ;;
        *.tar.gz)    tar xzf   $1 -C $2 ;;
        *.rar)       unrar e   $1    $2 ;;
        *.gz)        gunzip -c $1 >  $2 ;;
        *.tar)       tar xf    $1 -C $2 ;;
        *.tbz2)      tar xjf   $1 -C $2 ;;
        *.tgz)       tar xzf   $1 -C $2 ;;
        *.zip)       unzip     $1 -d $2 ;;
        *.7z)        7z x      $1 -o $2 ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
