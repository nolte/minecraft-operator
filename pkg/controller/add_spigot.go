package controller

import (
	"github.com/nolte/minecraft-operator/pkg/controller/spigot"
)

func init() {
	// AddToManagerFuncs is a list of functions to create controllers and add them to a manager.
	AddToManagerFuncs = append(AddToManagerFuncs, spigot.Add)
}
