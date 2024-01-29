# MS SQL Tools Chart
## Test db access within the k8s cluster

## Dockerhub
https://hub.docker.com/_/microsoft-mssql-tools

## Github
https://github.com/microsoft/mssql-docker

## Usage
helm install sqltest .

k exec -it sqltest-deployment-7786ccdffd-btqqx bash 

sqlcmd -S <SERVER> -U <USER> -P <PASSWORD> -Q <SQL>

sqlcmd -S 127.0.0.1 -U cdasaro -P password -Q "select @@version"

Alternatively connect with sqlcmd -S <SERVER> -U <USER> -P <PASSWORD> and run interactively
