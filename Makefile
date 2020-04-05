.PHONY: build

generatek8s:
	operator-sdk generate k8s

generatecrds:
	operator-sdk generate crds

base:
	operator-sdk build nolte/minecraft-operator

build: generatek8s generatecrds base
	# only build the container. Note, docker does this also if you apply other targets.
