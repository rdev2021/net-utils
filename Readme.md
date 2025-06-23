# Networking Utilities for Container based Platform

Tiny container image based on Alpine base image that includes commonly used networking utilities. This image is useful for testing, debugging, and running network-related commands with in containers or Kubernetes pods.

## Supported Tools

The image includes the following tools:

- `curl` – Command-line tool for transferring data with URLs
- `netcat` (`nc`) – TCP/UDP port scanner and listener
- `openssl` – Toolkit for SSL/TLS and general cryptography
- `dig` – DNS lookup utility
- `nslookup` – DNS query tool

## Usage in Kubernetes

You can use this image as a temporary debug pod in a Kubernetes cluster.

### Example: Running as a Debug Pod

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: net-utils
  namespace: default # Replace 'default' with your namespace if needed
spec:
  containers:
  - name: tools
    image: rdev2021/net-utils:latest # Or ghcr.io/rdev2021/net-utils:latest
    command: ["/bin/bash"]
    args: ["-c", "sleep infinity"]
  restartPolicy: Never
```

Apply the changes to target kuberentes clusters with:

```sh
kubectl apply -f debug-pod.yaml
kubectl exec -it net-utils -- /bin/bash # Use namespace if needed
```

Once inside the container, you can run commands like `curl`, `netcat`, and others as needed.
