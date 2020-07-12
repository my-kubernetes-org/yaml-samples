# to access the cluster from within the k8s machine
# --------------------------------------------------

# to access the cluster from outside the k8s machine
# --------------------------------------------------
# update the external ip address in the YAML file under "externalIPs" 
# Change the ip address in the link below 
# Note for the "my-flask" service name. can access few services in parallel !!!
# 16443 is the default secured port of microk82
# on first request it will ask user and password. can be found on 
# /var/snap/microk8s/current/credentials/basic_auth.csv
# the link to access:
# https://13.93.35.234:16443/api/v1/namespaces/default/services/my-flask:/proxy/


microk8s.kubectl apply -f simple-flask-service.yaml