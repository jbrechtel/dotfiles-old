# Set up the prompt

autoload -Uz promptinit
promptinit
prompt walters

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#setup path and other environment variables
export JAVA_HOME=$HOME/opt/jdk1.6.0_25
export SCALA_HOME=$HOME/opt/scala
export ANDROID_SDK_HOME=$HOME/opt/android-sdk-linux
export ANDROID_HOME=$ANDROID_SDK_HOME
export PATH=$JAVA_HOME/bin:$HOME/opt/apache-ant-1.8.2/bin:$HOME/opt/gradle/bin:$ANDROID_SDK_HOME/platform-tools:$ANDROID_SDK_HOME/tools:$SCALA_HOME/bin:$HOME/bin:$PATH:$HOME/opt/apache-maven-3.0.3/bin:$HOME/opt/play-2.0-beta

#aliases
source $HOME/.aliases
