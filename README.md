```
cosign verify \
  --certificate-identity "https://github.com/ystkfujii/playground_helm_chart/.github/workflows/release.yaml@refs/tags/v0.1.0" \
  --certificate-oidc-issuer "https://token.actions.githubuserconte
nt.com" \
  ghcr.io/ystkfujii/charts/oci-push-smoke@sha256:3a6feca9f11dd9e81df7de2f406fc1058b86909a8d289957425027913d84c96e
```
