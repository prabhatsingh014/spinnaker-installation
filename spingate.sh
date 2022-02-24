GATE_POD=`kubectl.exe get pods --namespace spinnaker -l "cluster=spin-gate" -o jsonpath="{.items[0].metadata.name}"`
echo $GATE_POD
kubectl.exe port-forward $GATE_POD 8084:8084 --namespace spinnaker
