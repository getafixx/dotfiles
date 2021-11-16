#!/bin/bash
 
# Forwards all services of a kubernetes namespace and keep those alive
# Requirements: kubectl, kubefwd, a kube-config per context in $HOME/.kube/config-[Context-Name]
# Usage ./kfwd.sh -n <namespace>
 
set -eu
 
INTERVAL=180 # every 3minutes, port-forward timeout seems to be around 5min
 
function watchForward() {
while IFS= read -r line; do
echo "Watching forward (every ${INTERVAL}s): $line"
watchJob $line &
done
}
 
function watchJob() {
while true; do
sleep $INTERVAL
nc -zw3 $1 $2 && echo "$1 $2 works!" || exit 1
done
}
 
function runKubeFwd() {
kubefwd svc -c "/var/www/kubeconfigs/kubeconfig-$(kubectl config current-context)" $@ 2>&1 \
| tee -a /dev/stderr
}
function filterForward() {
stdbuf -o0 grep "Forwarding: "
}
function parseForward() {
sed -u -e 's/^.*Forwarding: \([^:]*\):\([0-9]*\).*$/\1 \2/g'
}
 
runKubeFwd $@ | filterForward | parseForward | watchForward
 
 
set +eu