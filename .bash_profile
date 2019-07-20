#  ---------------------------------------------------------------------------
#  Contents:
#  1. Environment Configuration
#  2. Terminal
#  3. Git
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------
#   Change Prompt
#   ------------------------------------------------------------
    export PS1="________________________________________________\n| \w @ \h (\u) \n| => "
    export PS2="| => "

#   -----------------------------
#   2. TERMINAL
#   -----------------------------
    # Preferred 'ls' implementation
    alias ll='ls -FGlAhp'
               
    # list directory during 'cd'
    cd() { builtin cd "$@"; ll; }
               
    # Open finder
    alias f='open -a Finder ./'                 

    #lr:  Full Recursive Directory Listing
    alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   ---------------------------------------
#   3. Git
#   ---------------------------------------
    ## git autocompletion:
    [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    	[ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        	. $(brew --prefix)/etc/bash_completion.d/git-completion.bash
    }