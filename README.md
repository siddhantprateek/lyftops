# LYFTOPS

The aim of this project is to understand the GitOps best practices, utilizing Argo CD for continuous deployment and Argo Rollouts for advanced deployment strategies within a Kubernetes environment. You will be responsible for setting up a GitOps pipeline that automates the deployment and management of a simple web application.

## Tech Stack

- `Kubernetes`
- `ArgoCD`
- `Go`
- `Labstack - Echo`
- `Github Actions`
- `Docker`

### Setting up the environment

- Getting started with ArgoCD, by creating `argocd` namespace and creating argocd resources from manifests.
```bash
kubectl create namespace argocd 
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

### Author

[Siddhant Prateek Mahanayak](https://github.com/siddhantprateek)