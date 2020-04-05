#!/usr/bin/env bash
# Bash3 Boilerplate. Copyright (c) 2014, kvz.io

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)" # <-- change this as it depends on your app

arg1="${1:-}"

if [ -z "$arg1" ]; then
  STATE=apply
else
  STATE=$arg1
fi

kubectl $STATE -f $__dir/role.yaml
kubectl $STATE -f $__dir/role_binding.yaml
kubectl $STATE -f $__dir/service_account.yaml

kubectl $STATE -f $__dir/crds/minecraft.noltarium.de_spigots_crd.yaml
kubectl $STATE -f $__dir/crds/minecraft.noltarium.de_vanillas_crd.yaml