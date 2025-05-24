# ArgoCD

```
$ kustomize build --enable-helm ./bootstrap | kubectl apply -f -
$ kubectl -n cert-manager create secret generic \
  cloudflare-api-token-secret --from-literal=api-token=$CLOUDFLARE_API_TOKEN
$ kubectl -n kube-system rollout restart deployment/cilium-operator
$ kubectl -n kube-system rollout restart ds/cilium
$ kubectl -n argocd get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d; echo
```
