# .bashrc

# User specific aliases and functions
alias exit='history -a && exit'
LS_COLORS='rs=0:di=01;31;40:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#Append changes to history instead of overwrite full file
alias exit='history -a && exit'

# User specific aliases and functions
alias l='ls -la --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lrt --color=auto'
alias grep='grep --color=auto'

#Reload Bashrc
alias reload='source $HOME/.bashrc'

# Save history correctly when using multiple terminals
# Dont save duplicate lines or blank lines in to history
export HISTCONTROL=ignoreboth
export HISTSIZE=1000

shopt -s histverify
shopt -s cdable_vars      # if cd arg is not valid, assumes its a var defining a dir
shopt -s cdspell          # autocorrects cd misspellings
shopt -s checkwinsize     # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist          # save multi-line commands in history as single line
shopt -s dotglob          # include dotfiles in pathname expansion
shopt -s expand_aliases   # expand aliases
shopt -s extglob          # enable extended pattern-matching features
shopt -s histappend       # append to (not overwrite) the history file
shopt -s hostcomplete     # attempt hostname expansion when @ is at the beginning ofa word
shopt -s nocaseglob       # pathname expansion will be treated as case-insensitive

if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
    bind '"\C-t": reverse-search-history'
fi

set show-all-if-ambiguous on
set completion-ignore-case on

# sudo apt-get install -y git-core bash-completion
source /etc/bash_completion.d/git-prompt

alias csf="./bin/php-cs-fixer fix --verbose"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin;$PATH:$HOME/.composer/vendor/bin;$HOME/bin;$HOME/.kubectx;"
alias spark="/var/www/spark-installer/spark"
alias gs="git status"
alias gp="git pull"
alias gps="git push"

alias cda="composer dump-autoload"
# artisan bash completion
alias artisan="php artisan"
if [[ -r "$HOME/.composer/vendor/balping/artisan-bash-completion/artisan" ]]; then
    source "$HOME/.composer/vendor/balping/artisan-bash-completion/artisan"
fi
export TERM=xterm-256color
export EDITOR='/usr/bin/nano'
export K9S_EDITOR='/usr/bin/nano'

#export KUBECONFIG=$HOME/kubeconfigs/kubeconfig-admin-wm692xrjpp-justinstest

source $HOME/kube-ps1.sh

PS1='{$(kube_ps1)}[\[\e[93m\]\u\[\e[35m\]@\[\e[39m\]\h\[\e[0m\]:\[\e[33m\]\w\[\e[0m\]]\[$MAGENTA\]$(__git_ps1)\[$WHITE\]\$ '


function delete_pods() {
    if [ -z ${1+x} ]; 
    then 
        echo "delete_pods needs a variable otherwise use delete_all_pods "; 
    else 
        kubectl get pod | grep "$1" | awk '{ print $1 }' |  xargs -P 100 kubectl delete pod
    fi
}
function delete_all_pods() {
    kubectl get pod | grep "$1" | awk '{ print $1 }' |  xargs -P 100 kubectl delete pod
}
function list_pods() {
    kubectl get all --all-namespaces | grep "$1"
}

function kubebounce() {
    deploys=`kubectl -n $1 get deployments | tail -n +2 | cut -d ' ' -f 1`
    for deploy in $deploys; do
        kubectl -n $1 rollout restart deployments/$deploy
    done
}

function restart_canal_kube() {
    kubens kube-system
    delete_pods canal-
    delete_pods kube-proxy-
}

function reset_readers() {
    kubens default
    delete_pods os-usage-reader-
    delete_pods s3-bucket-reader-
    delete_pods energy-reader-
    delete_pods general-reader-
    delete_pods miner-data-reader-
    delete_pods netbox-remote-reader-
    delete_pods netbox-vm-reader-
    delete_pods os-usage-reader-    
    delete_pods traffic-data-reader-
}

function pod_shell() {
    kubectl exec --stdin --tty $1 -- /bin/sh;
}

alias forward-redis='kubectl -n databases port-forward svc/redis 6379'
alias forward-timescaledb='kubectl -n databases port-forward svc/timescaledb 5432'
alias forward-elasticsearch='kubectl -n logging port-forward svc/elasticsearch 9200'
alias forward-elasticsearch-new='kubectl -n gec-monitoring port-forward svc/es-monitoring-master 9200'

alias forward-kibana='kubectl -n logging port-forward svc/kibana 5601'
alias forward-alertmanager='kubectl -n monitoring port-forward svc/alertmanager-main 9093'
alias forward-grafana='kubectl -n monitoring port-forward svc/grafana 3000'
alias forward-prometheus='kubectl -n monitoring port-forward svc/prometheus-k8s 9090'
alias forward-goldpinger='kubectl -n monitoring port-forward svc/goldpinger 8080'
alias forward-kafka='kubectl -n kafka port-forward svc/kafka 9093'

alias k8s-justin-test='export KUBECONFIG=$HOME/kubeconfigs/kubeconfig-admin-cwq9wt2hqt-justins-test'

alias k8s-production='export KUBECONFIG=$HOME/kubeconfigs/kubeconfig-admin-gjvfg2dfwk-production-2021'
alias k8s-staging='export KUBECONFIG=$HOME/kubeconfigs/kubeconfig-admin-vx7dkz4287-staging-2021'

alias k8s-experimental='export KUBECONFIG=$HOME/kubeconfigs/kubeconfig-admin-tdwzlqfxts-justin-exper'
alias k8s-opsdevedge='export KUBECONFIG=$HOME/kubeconfigs/kubeconfig-opscentercore-devedge'

alias k8s-redshift-production='export KUBECONFIG=$HOME/kubeconfigs/kubeconfig-admin-4tb49vrpg5-redshift-prod'
alias k8s-redshift-staging='export KUBECONFIG=$HOME/kubeconfigs/kubeconfig-admin-jct9vqrcrf-redshift-staging'

alias kfwd="$HOME/kfwd.sh"
