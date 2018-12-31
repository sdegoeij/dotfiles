set bell-style none # No bell, because it's damn annoying

# Autocompletion
# -----------------------------------------------------------------------------
# Make Tab autocompletion case-insensitive (cd ~/dow<Tab> => cd ~/Downloads/).
set completion-ignore-case On

# When autocompleting symlinks to directories, immediately add a trailing "/".
set mark-symlinked-directories on

# Do not autocomplete hidden files ("dot files") unless the pattern explicitly
# begins with a dot.
set match-hidden-files off

# Show all autocomplete results at once.
set page-completions off

# If there are more than 200 possible completions for a word, ask to show them
# all.
set completion-query-items 200

# Immediately show all possible completions.
set show-all-if-ambiguous on

# Show extra file information when completing, like ls -F does.
set visible-stats on

# Line editing
# -----------------------------------------------------------------------------
# Allow UTF-8 input and output, instead of showing them like $'\0123\0456'.
set input-meta on
set output-meta on
set convert-meta off