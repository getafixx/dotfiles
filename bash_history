which octant 
kubectl get pods | grep dash
kubectl get svc
less bin/all_in_namespace.sh 
kubens default
delete_pods victed
kubectl get pods
delete_pods rror
billing-production 
stern vmware-data-reader-cronjob-1596633300-kbnkd
stern "" --tail 1
kubectl get nodes
kubectl top nodes
kubens monitoring
kubectl describe pod prometheus-k8s-1
k9s
kubectl events
kubectl get events
kubectl get events -w
kubens kube-system
kubectl get pods | grep canal
alias | grep delete
less .bashrc
delete_pods canal
kub
kubctl get namespaces
kubectl get namespaces
kubens
kubens kafta
kubens kafka
stern exporter --tail 1
kubens flux
clear
kubectl get all\
kubectl get all
kubectl scale deployment flux --replicas=1
kubectl get all  
stern flux
stern postgres-consumer
kubectl delete pods --all
kubens databases
kubectl get all | grep redis
kubectl get stateful
kubectl get statefulsets
stern -n flux flux
delete_pods Error
delete_pods CrashLoop
stern ""
kubectn databases
kubectl get postgres
kubectl get dormantdatabases
kubectl describe dormantdatabases
kubectl
kubectl -n flux scale deployment flux --replicas=1
stern timescale
k8s-production
list_pods Error
list_pods Completes
list_pods Completed
delete_pods Completed
list_pods
kubens kafa
stern kafka
stern kafka --tail 1
kubectl delete replicaset.apps/strimzi-cluster-operator-5d87cd5587
kubectl delete replicaset.apps/strimzi-cluster-operator-7544867984
kubectl delete replicaset.apps/strimzi-cluster-operator-775bc4895f
kubectl scale deployment kafka --replicas=0
kubectl scale statefulsets kafka --replicas=0
kubectl scale statefulsets persistent-kafka --replicas=0
kubectl scale statefulsets persistent-zookeeper --replicas=0
kubectl scale statefulsets persistent-zookeeper --replicas=3
kubectl scale statefulsets persistent-kafka --replicas=3
cd ..
cd strategy
git pull
blackbox_listadmins
blackbox_removeadmin jan.willhaus@innovo-cloud.de
git status
git commit -m'REMOVED ADMIN: jan.willhaus@innovo-cloud.de' .blackbox/pubring.kbx .blackbox/trustdb.gpg .blackbox/blackbox-admins.txt
git branch remove-admins
git reset HEAD~ --hard
git checkout remove-admins
git log
blackbox_removeadmin daniel.swaerd@innovo-cloud.de
git commit -m'REMOVED ADMIN: daniel.swaerd@innovo-cloud.de' .blackbox/pubring.kbx .blackbox/trustdb.gpg .blackbox/blackbox-admins.txt
blackbox_update_all_files
l
blackbox_removeadmin lars.weiler@innovo-cloud.de
git commit -m'REMOVED ADMIN: lars.weiler@innovo-cloud.de' .blackbox/pubring.kbx .blackbox/trustdb.gpg .blackbox/blackbox-admins.txt
git branch remove-admins-lars
git pull --force
gi
git reset HEAD --hard
git checkout remove-admins-lars
git staging/
git commit --author="Justin King <justin.king@innovo-cloud.de>"
git --amend commit --author="Justin King <justin.king@innovo-cloud.de>"
git commit --ammend --author="Justin King <justin.king@innovo-cloud.de>"
git commit --amend --author="Justin King <justin.king@innovo-cloud.de>"
apt-get install nano
git push origin remove-admins-lars
cd
ls -la
nano .gitconfig
cd /var/www/strategy
git push
git push --set-upstream origin remove-admins-lars
bad_pods
bad_pods  Erriorr
bad_pods  Error
delete_pods postgres-cronjob-update
kubns databases
postgres-cronjob-update
stern
stern kafka  --tail 1
stern postgres-consumer --tail 1
stern postgres
kubectl scale deployment timescaledb --replicas=0
kubectl scale statefulsets timescaledb --replicas=0
kubectl scale statefulsets timescaledb --replicas=1
kubectl scale statefulsets redis --replicas=0
kubectl scale statefulsets redis --replicas=1
stern postgres-cronjob-update-distinct-aggregated-data -tail 1
stern postgres-cronjob-update-distinct-aggregated-data -t 1
stern postgres-cronjob-update-distinct-aggregated-data --tail 1
bad_pods Error
kubectl scale statefulsets timescaledb --replicas=1 -n database
kubectl scale statefulsets timescaledb --replicas=1 -n databases
bad_pods statefulsets
bad_pods database
bad_pods time
history
kubectl scale statefulsets elasticsearch --replicas=1 -n databases
export TESTING_POSTGRES_HOST=billing-psql
export TESTING_POSTGRES_PORT=5432
export TESTING_POSTGRES_USER=test
export TESTING_POSTGRES_PASSWORD=test
export TESTING_DATABASE="collector_timeseries_db"
export APP_DBUSER=testing
export APP_DBPASSWORD=testing
export APP_DB="testing_db"
export POSTGRES_PASSWORD=test
export POSTGRES_USERNAME=test
export POSTGRES_DATABASE="testing_db"
export APP_DBPASSWORD=test
export APP_DBUSER=test
cd protagonist
pytest --verbose tests/report_generation/test_openstack_per_customer_xlsx.py
source venv/bin/activate
ls -la /tmp
pytest -s --verbose tests/report_generation/test_openstack_per_customer_xlsx.py
cd ../protagonist-database/
./generate_env_exports.sh 
$(kubectl get secrets -n databases timescaledb-auth  -o jsonpath='{.data.\POSTGRES_USER}' | base64 --decode)
k8s-staging 
kubectl get secrets -n databases timescaledb-auth  -o jsonpath='{.data.\POSTGRES_USER}' | base64 --decode
git commit -m "full per customer report done with added sheets/data for sales team"
pytest -s --verbose tests/report_generation/test_usage_report_per_customer_xlsx.py 
git commit -m "fixed test for renamed report"
drop database collector_timeseries_db
./generateexports.sh 
python3.7 -m virtualenv -p python3.7 venv
pytest -s --verbose tests/report_generation/test_usage_report_per_customer_xlsx.py
./generateexports.sh
git commit -m "adding usage report per customer job generator"
pre-commit install
pip install pre-commit
pre-commit autoupdate
pip install flake8
pre-commit run --verbose --all-files --show-diff-on-failure
python -V
which python
ls -lrt /var/www/protagonist/venv/bin/python
python3 -V
poetry install
de
deactivate
rm -rf venv/
python3.7 -V
python3.7 -m venv venv
python3.8 -m venv venv
rm -rf /root/.cache/
pip install cffi-1.14.4
pip install cffi
apt install python3.7
python3.7
alias
alias python='/usr/bin/python3.7'
python -m venv venv
apt update
apt install python3-virtualenv
virtualenv
python3.7 -m virtualenv -p python3.7 venv
source venv/bin/activate
poetry install -vvv
apt search libpython3
apt search libpython3.7-dev
apt install libpython3.7-dev
poetry install -v


stern kafka --tail 1
kubectl delete replicaset.apps/strimzi-cluster-operator-5d87cd5587
kubectl delete replicaset.apps/strimzi-cluster-operator-7544867984
kubectl delete replicaset.apps/strimzi-cluster-operator-775bc4895f
kubectl scale deployment kafka --replicas=0
kubectl scale statefulsets kafka --replicas=0
kubectl scale statefulsets persistent-kafka --replicas=0
kubectl scale statefulsets persistent-zookeeper --replicas=0
kubectl scale statefulsets persistent-zookeeper --replicas=3
kubectl scale statefulsets persistent-kafka --replicas=3

kubectl delete  replicaset.apps/strimzi-cluster-operator-64cb9db969
kubectl delete  replicaset.apps/strimzi-cluster-operator-69749665d 
kubectl delete  replicaset.apps/strimzi-cluster-operator-6b76b489df
kubectl delete  replicaset.apps/strimzi-cluster-operator-944d6b76d 
kubectl delete  replicaset.apps/strimzi-cluster-operator-bf7755c77

kubens kube-system
delete_pods canal-
delete_pods kube-proxy-

delete_pods replicaset.apps/strimzi-cluster
