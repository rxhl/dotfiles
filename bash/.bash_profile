#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH:/Users/Rahul_Sharma-NYZ/Library/Python/3.7/bin";
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export PATH="/Users/Rahul_Sharma-NYZ/Library/Python/3.9/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Rahul_Sharma-NYZ/google-cloud-sdk/path.bash.inc' ]; then . '/Users/Rahul_Sharma-NYZ/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Rahul_Sharma-NYZ/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/Rahul_Sharma-NYZ/google-cloud-sdk/completion.bash.inc'; fi

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####