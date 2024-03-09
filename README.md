# LYFTOPS

The aim of this project is to understand the GitOps best practices, utilizing Argo CD for continuous deployment and Argo Rollouts for advanced deployment strategies within a Kubernetes environment. You will be responsible for setting up a GitOps pipeline that automates the deployment and management of a simple web application.

## Tech Stack

- `Kubernetes`
- `ArgoCD`
- `Argo Rollout`
- `Go`
- `Labstack - Echo`
- `Github Actions`
- `Docker`

## Application Workflow

![](./assets/lyftops-workflow.png)


Few things to note: 

> - `/kubernetes` contains the kubernetes manifest files for the Go application. It contains (Deployment, Service & ConfigMap)
> - `/kubernetes/argo-rollout` contains the Rollout for Go application. Plus Instruction to step Argo Rollout in Kubernetes cluster.
> There are 4 versions of docker image on docker hub. `go-app:latest`, `go-app:v2`, `go-app:v3`, `go-app:v4`.

---

- Currently, the application is written in Go which is in `/app` directory. 
- The Go application is containerized and pushed to Docker Hub to `siddhantprateek/go-app`.
- So everytime, I push any changes to Github,  a CI pipeline by Github Actions will be triggered which builds the docker image of the app and pushes it to Docker Hub.
- Within the Kubernetes cluster, there are 3 namespaces:
  - `go-app-ns`: contains all the resources related to Go app.
  - `argocd` : contains all the resources related to Argo CD.
  - `argo-rollout`: contains Argo Rollout CRDs.
- So in kubernetes cluster, ArgoCD creates a pipleline with Git repository, where any changes that occurred to manifest files in `/kubernetes` directory triggers the workflow.
- Argo CD continuously monitors the `/kubernetes` directory for changes.
- When changes are detected, Argo CD suggests that the application's current state is out of sync.
- Review the suggested changes in the Argo CD dashboard.
- Decide whether to proceed with syncing the changes, initiating a rollout of the updated application version, or rollback to a previous version.
- Argo CD facilitates the management of rollouts, ensuring seamless deployment of the updated application version.
- It provides visibility into the deployment process and allows for monitoring of the application's health and performance.

### Setting up the environment

- Setting up Argo CD Resources
```bash
kubectl create namespace argocd 
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
- Setting up Argo Rollout

```bash
kubectl create namespace argo-rollouts
kubectl apply -n argo-rollouts -f https://github.com/argoproj/argo-rollouts/releases/latest/download/install.yaml
```
- Setting up Application Resources

```bash
kubectl apply -f ./kubernetes/
kubectl apply -f ./kubernetes/argo-rollout/
```

- `Docker Image` is located at - https://hub.docker.com/r/siddhantprateek/go-app

### Author

[Siddhant Prateek Mahanayak](https://github.com/siddhantprateek)