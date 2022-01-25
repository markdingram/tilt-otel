# tilt-prom
Tilt example installing Prometheus via helm_resource


Run `make` (assumes ctlptl, kind, tilt) installed

The Helm chart for Prometheus is installed which creates 4 deployments:

- prom-kube-state-metrics:deployment
- prom-prometheus-alertmanager:deployment
- prom-prometheus-pushgateway:deployment
- prom-prometheus-server:deployment

Goal is to split out these deployments into individual Tilt UI resources.

Attempting to split out a new resource with:

````
k8s_resource(
    objects=['prom-prometheus-alertmanager:deployment'],
    new_name='prom-alertmanager'
)
````

Fails with:

````
Loading Tiltfile at: /Users/markingram/ghq/github.com/markdingram/tilt-otel/Tiltfile
No object identified by the fragment "prom-prometheus-alertmanager:deployment" could be found. Possible objects are: 
````

Possibly because all objects are already allocated to the single 'prom' resource?
