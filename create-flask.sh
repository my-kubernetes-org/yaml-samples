# to access the cluster from within the k8s machine
# --------------------------------------------------
# After running this script, run the script get-all.sh
# Then look for the "cluster IP" of the service "service/my-flask"
# access locally on the machine http://[ip]:8080 

# to access the cluster from outside the k8s machine
# --------------------------------------------------
# open inbound port 16443 on the machine. 16443 is the default secured port for microk82 management
# update the external ip address in the YAML file under "externalIPs" 
# Change the ip address in the link below 
# Note for the "my-flask" service name. can access few services in parallel !!!
# on first request it will ask user and password. can be found on:  /var/snap/microk8s/current/credentials/basic_auth.csv
#   for example: admin, L21EdjRubHBsRFZ1ZjduZVJ2cSs5SVdjMUdXQUhTOFpPVkdDZWVTdjUxQT0K
# the link to access:
# https://13.93.35.234:16443/api/v1/namespaces/default/services/my-flask:/proxy/


microk8s.kubectl apply -f simple-flask-service.yaml