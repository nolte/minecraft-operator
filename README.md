# Minecraft Operator

This is a [Kuberntes Opreator](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/) implemtntes with Go [operator-framework/operator-sdk](https://github.com/operator-framework/operator-sdk). 

As basement for the Minecraft Instances we use the Container Image from [itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server).  

## Features

* Different CRDs for the Server Types, (FTB,Spigot,Vanilla)
* Plugin Handling, for Spigot/Bukkit Servers _(planed)_
  * [sladkoff/minecraft-prometheus-exporter](https://github.com/sladkoff/minecraft-prometheus-exporter) for Prometheus Integration
  * etc...
* Restore and Backup _(planed)_
  * Restore the World from S3 Backup
  * create a frequent Backup job based on implemented with [stash.run](https://stash.run/)
* 

# Build

## Development

For easy local development use a combination of [Visual Studio Code Remote - Containers](https://code.visualstudio.com/docs/remote/containers) and [KuberntesInDocker](https://kind.sigs.k8s.io/docs/user/quick-start/).

As Base for the VisualStudio code, we use the [qdm12/godevcontainer](https://github.com/qdm12/godevcontainer) Project.

You will find the full VisualStudio Code Config at [.devcontainer/devcontainer.json](.devcontainer/devcontainer.json).
The Development Container provide a base set of tools wich are requeired for development like the kind, terraform, helm, etc binaries.

```bash
kind create cluster

kind export kubeconfig

# Build the Operator Image
operator-sdk build minecraft-operator

# add the generated image to your local Kind Cluster
kind load docker-image minecraft-operator

```

```bash
kubectl delete -f /minecraft-operator/deploy/crds/minecraft.noltarium.de_v1alpha1_minecraft_cr.yaml
kubectl apply -f /minecraft-operator/deploy/crds/minecraft.noltarium.de_v1alpha1_minecraft_cr.yaml
```

### Debugging

For debugging use the ``Integreatly Operator`` lunch configuration.

### Operators SDK Commands

```bash
# Regenerate Classes by changed types
operator-sdk generate k8s


operator-sdk run --local \
  --namespace "operators-dev"

```
