#curl -d "query[op]=-", "query[ops]=[5,3]" localhost:3000
curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d ' {"query":{"op":"/","ops":[5, 0]}}'  localhost:8888
