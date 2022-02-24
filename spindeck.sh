DECK_POD=`kubectl.exe get pods --namespace spinnaker -l "cluster=spin-deck" -o jsonpath="{.items[0].metadata.name}"`
echo $DECK_POD
kubectl.exe port-forward $DECK_POD 9000:9000 --namespace spinnaker
