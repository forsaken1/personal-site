# Personal page

Personal page, portfolio, projects etc.

## Run

```
bundle
ruby app.rb # run in development
```

run with Docker

```
docker build -t personal_site .
docker run -p 3000:3000 --name personal_site personal_site:latest
```

## Deployment

Setup your remote server `cat /etc/rancher/k3s/k3s.yaml` in kubectl config `~/.kube/config`

```
kubectl apply -f k8s/configmap.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml
```
