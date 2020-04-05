.PHONY: build

generatek8s:
	operator-sdk generate k8s

generatecrds:
	operator-sdk generate crds

base:
	operator-sdk build nolte/minecraft-operator

build: base
	# only build the container. Note, docker does this also if you apply other targets.
