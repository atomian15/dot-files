
## 重複パスを登録しない
typeset -U path cdpath fpath manpath

## sudo用のpathを設定
typeset -xT SUDO_PATH sudo_path
typeset -U sudo_path
sudo_path=({/usr/local,/usr,}/sbin(N-/))

##prompt
PROMPT="[%F{green}%B%n%b%f] %F{yellow}%/%f
$ % "

# ssh
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# pager
export PAGER=/bin/vimpager
export MANPAGER=/bin/vimpager

## pathを設定
path=(~/bin(N-/) /usr/local/bin(N-/) ${path})

##プロンプトの上書き防止
unsetopt promptcr

SHELL='/bin/zsh'


function share_history {
 history -a
 history -c
 history -r
}
PROMPT_COMMAND='share_history'

export LANG=ja_JP.UTF-8
export XMODIFIERS='@im=kinput2'

export CLICOLOR=1
#export LSCOLORS=gxGxcxdxCxegedabagacad
#export LSCOLORS=gxfxcxdxbxegedabagacad
#export LSCOLORS=DxGxcxdxCxegedabagacad
export LSCOLORS=gxaxcxdxbxfxAxbxGxCxDx

fpath=(~/.zsh/functions $fpath)

autoload -U compinit
compinit -u

function chpwd() { ls -1 }

alias ls="ls -Fh"
alias less="less -M"
alias fin="open -R"
alias xld="open -a /Applications/XLD.app"
alias bashrc="vim ~/.bashrc"
alias zshrc="vim ~/.zshrc"

alias hidden="chflags hidden ~/Desktop/*"
alias nohidden="chflags nohidden ~/Desktop/*"

alias javac='javac -J-Dfile.encoding=UTF-8'
alias gccgl='gcc -lobjc -framework AGL -framework Cocoa -framework OpenGL -framework GLUT'
alias java='java -Dfile.encoding=UTF-8'
alias cadnano="python3.5 /Users/harukami/cadnano2.5-master/bin/main.py"
alias stldna="python3.5 /Users/harukami/cadnano2.5-master/bin/createstl.py"
alias wsxm="wine ~/.wine/drive_c/users/Public/Application\ Data/WSxM\ solutions/WSxM\ 5.0\ Develop\ 8.2/WSxM.exe"

export CLASSPATH=.:/usr/share/java/mysql-connector-java-bin.jar
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/opt/local/bin:$PATH
export PATH=/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH
export PATH=/Applications:$PATH
export PATH=~/Program/ASFrecorder/source:$PATH
export PATH=~/path/rar:$PATH
export PATH=/var/lib/gems/1.8/bin:$PATH
export PATH=/usr/local:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/Users/harukami/Downloads/adt-bundle-mac-x86_64-20140702/sdk/platform-tools:$PATH
export PATH=/usr/local/texlive/2015/bin/x86_64-darwin:$PATH

### Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then    
  export WORKON_HOME=$HOME/.virtualenvs    
  source /usr/local/bin/virtualenvwrapper.sh
fi
