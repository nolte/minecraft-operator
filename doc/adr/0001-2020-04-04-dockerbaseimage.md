<!-- based on https://github.com/adr/madr/blob/master/template/template.md -->
# Select the Base Container Image

* Status: proposed
* Date: 2020-04-04

Technical Story: [description | ticket/issue URL] <!-- optional -->

## Context and Problem Statement

Need a Container Image, as basement for migrate the old VM Structure from [nolte/ansible-minecraft](https://github.com/nolte/ansible-minecraft) (Naive Version).

* The Current Server based on [Spigot](https://getbukkit.org/download/spigot) 1.14.x
  * With many different [plugins](https://nolte.github.io/minecraft-gameserver/plugins/), like [EngineHub/WorldEdit](https://github.com/EngineHub/WorldEdit)

## Decision Drivers <!-- optional -->

* [nolte](https://github.com/nolte)

## Considered Options

1. [itzg/minecraft-server](#itzg_minecraft-server)
2. [hoeghh/minecraft](#hoeghh_minecraft)
3. [Self Written](#nolte_minecraft-self-written)

## Decision Outcome

We start with the Option 1 [itzg/minecraft-server](#itzg_minecraft-server), if to many customizing required we will fork to a own Image.

### Positive Consequences <!-- optional -->

* direct strating ⏲
* Helm example from [nolte/helm-chart-minecraft](https://github.com/nolte/helm-chart-minecraft) 👓

### Negative Consequences <!-- optional -->

* The Existing image give the surrounding conditions 🛠

## Pros and Cons of the Options <!-- optional -->

### `itzg/minecraft-server`

*Source:* [itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server)  
*Container (DockerHub):* [itzg/minecraft-server](https://hub.docker.com/r/itzg/minecraft-server)

* [Spigot](https://getbukkit.org/download/spigot), Vanilla, [FeedTheBeast](https://feed-the-beast.com) support. 👍
* Needs customizing for better K8S Support, like [Prometheus Service Monitor](https://github.com/coreos/prometheus-operator/blob/master/Documentation/api.md#servicemonitorspec), or [Liveness, Readiness and Startup Probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/).

### `hoeghh/minecraft`

*Source:* [hoeghh/k8s-minecraft](https://github.com/hoeghh/k8s-minecraft/tree/master/docker-image)  
*Container (DockerHub):* [hoeghh/minecraft](https://hub.docker.com/r/hoeghh/minecraft)

* Vanilla only 👎
* Designt for kubernetes 👍

### `nolte/minecraft` (self written)

* needs time 👎
* do what we want 👍