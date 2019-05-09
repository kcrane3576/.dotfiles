#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.   Environment Configuration
#  2.   Make Terminal Better (remapping defaults and adding functionality)
#  3.   File and Folder Management
#  4.   Searching
#  5.   Process Management
#  6.   Networking
#  7.   System Operations & Information
#  8.   Web Development
#  9.   JHipster
#  10.   Reminders & Notes
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="________________________________________________\n| \w @ \h (\u) \n| => "
    export PS2="| => "

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------
    alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
    cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
    alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
    alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   -------------------------------
#   3.  FILE AND FOLDER MANAGEMENT
#   -------------------------------

#   ---------------------------
#   4.  SEARCHING
#   ---------------------------
    alias qfind="find . -name "                 # qfind:    Quickly search for file

#   ---------------------------
#   5.  PROCESS MANAGEMENT
#   ---------------------------

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
    alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

#   ---------------------------------------
#   7.  SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
    alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

#   ---------------------------------------
#   8.  WEB DEVELOPMENT
#   ---------------------------------------

#   ---------------------------------------
#   9.  JHipster
#   ---------------------------------------
	export PATH="/usr/local/opt/node@6/bin:$PATH"          #node LTS version 
    export M2_HOME="/usr/local/Cellar/maven/3.5.0/libexec" #maven path
    export PATH="$PATH:$M2_HOME/bin"                       #adding maven path to home path
	export PATH="$PATH:yarn global bin:$HOME/.config/yarn/global/node_modules/.bin"

#   ---------------------------------------
#   10. Git
#   ---------------------------------------
    ## git autocompletion:
    # Run this command first: curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
    #
    if [ -f ~/.git-completion.bash ]; then
          . ~/.git-completion.bash
