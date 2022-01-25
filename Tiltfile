
load('ext://helm_resource', 'helm_repo', 'helm_resource')

helm_repo(
    'prom',
    'https://prometheus-community.github.io/helm-charts',
    resource_name='helm-repo-prom')

helm_resource(
    'prom',
    'prom/prometheus',
    namespace='prom',
    flags=['--create-namespace'],
    resource_deps=['helm-repo-prom']
)

#  tilt describe uiresources/prom
#
# k8sResourceInfo:
#  Display Names:
#   prom-kube-state-metrics:serviceaccount
#   prom-prometheus-alertmanager:serviceaccount
#   prom-prometheus-node-exporter:serviceaccount
#   prom-prometheus-pushgateway:serviceaccount
#   prom-prometheus-server:serviceaccount
#   prom-kube-state-metrics:clusterrole
#   prom-prometheus-alertmanager:clusterrole
#   prom-prometheus-pushgateway:clusterrole
#   prom-prometheus-server:clusterrole
#   prom-kube-state-metrics:clusterrolebinding
#   prom-prometheus-alertmanager:clusterrolebinding
#   prom-prometheus-pushgateway:clusterrolebinding
#   prom-prometheus-server:clusterrolebinding
#   prom-prometheus-alertmanager:persistentvolumeclaim
#   prom-prometheus-server:persistentvolumeclaim
#   prom-prometheus-alertmanager:configmap
#   prom-prometheus-server:configmap
#   prom-kube-state-metrics:service
#   prom-prometheus-alertmanager:service
#   prom-prometheus-node-exporter:service
#   prom-prometheus-pushgateway:service
#   prom-prometheus-server:service
#   prom-kube-state-metrics:deployment
#   prom-prometheus-alertmanager:deployment
#   prom-prometheus-pushgateway:deployment
#   prom-prometheus-server:deployment
#   prom-prometheus-node-exporter:daemonset

# Attempting to split out a new resource with:

# k8s_resource(
#     objects=['prom-prometheus-alertmanager:deployment'],
#     new_name='prom-alertmanager'
# )

# Fails with:

# Loading Tiltfile at: /Users/markingram/ghq/github.com/markdingram/tilt-otel/Tiltfile
# No object identified by the fragment "prom-prometheus-alertmanager:deployment" could be found. Possible objects are: 
#
# Possibly because all objects are already allocated to the single 'prom' resource?