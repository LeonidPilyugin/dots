# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PYTHONPATH=$PYTHONPATH:/home/leonid/github.com/LeonidPilyugin/spmi/src/

# Path to your oh-my-zsh installation.
export ZSH="/usr/share/oh-my-zsh"

export EDITOR=nvim

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="kawaii"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting dirhistory pass copypath sudo)

# User configuration
alias passgen="pass generate -c"
alias cla=clear
alias mp="mpv --vo=drm --keep-open=yes"

alias ma="mamba"
alias maa="mamba activate"
alias mad="mamba deactivate"
alias mai="mamba install"
alias mac="mamba create"
alias mae="mamba env"
alias maec="mamba env create"
alias mael="mamba env list"
alias maer="mamba env remove"
alias mal="mamba list"

alias z="source ~/.zshrc"

alias rs="rsync -vh --info=progress2"

function fgt () { "$@" &>/dev/null  &! }

function uwf () { uwuify "$@" | wl-copy }

function trf () { trans file://$(pwd)/$1 > $2 2> /dev/null }

function mp3repack () {
    for file in $@; do
        echo $file
        mv $1 .temp.mp3 && ffmpeg -i .temp.mp3 -b:a 192k $1 &> /dev/null
    done
}

function chvol () {
    ffmpeg -i "$1" -b:a 192k -filter_complex "volume=$2" .temp.mp3
    mv .temp.mp3 "$1"
}

function allffmpeg () {
    for song in *; do
        ffmpeg -i "$song" $@ .temp.mp3
        mv .temp.mp3 $song
    done
}

alias adjvol='allffmpeg -filter_complex "loudnorm,volume=5dB"'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export PATH="$PATH:/home/leonid/.local/bin"

if [ -f ~/.zsh-specific ]; then
    source ~/.zsh-specific
fi

source $ZSH/oh-my-zsh.sh
