# ===== Basics

HISTFILE=~/.zhistory
HISTSIZE=2000
SAVEHIST=1000

# Allow comments even in interactive shells (especially for Muness)
setopt INTERACTIVE_COMMENTS

# Spell check commands!  (Sometimes annoying)
setopt CORRECT

# 10 second wait if you do something that will delete everything.  I wish I'd had this before...
setopt RM_STAR_WAIT

# beeps are annoying
setopt NO_BEEP

# ===== History

# Allow multiple terminal sessions to all append to one zsh command history
setopt APPEND_HISTORY

# Add comamnds as they are typed, don't wait until shell exit
setopt INC_APPEND_HISTORY

# If I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS

# Even if there are commands inbetween commands that are the same, still only save the last one
setopt HIST_IGNORE_ALL_DUPS

# When searching history don't display results already cycled through twice
setopt HIST_FIND_NO_DUPS

# Remove extra blanks from each command line being added to history
setopt HIST_REDUCE_BLANKS

# If a line starts with a space, don't save it.
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE

# When using a hist thing, make a newline show the change before executing it.
setopt HIST_VERIFY

# Include more information about when the command was executed, etc
setopt EXTENDED_HISTORY

# Killer: share history between multiple shells
setopt SHARE_HISTORY

setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# ===== Completion


unsetopt MENU_COMPLETE
unsetopt FLOWCONTROL

setopt AUTO_LIST
setopt AUTO_MENU
setopt ALWAYS_TO_END
setopt COMPLETE_IN_WORD

# ===== Prompt

# Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt PROMPT_SUBST
