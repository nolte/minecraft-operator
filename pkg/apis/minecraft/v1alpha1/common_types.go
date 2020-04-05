package v1alpha1

type MinecraftSpec struct {
	AcceptEula bool `json:"acceptEula,omitempty"`

	// +kubebuilder:validation:MaxItems=500
	// +kubebuilder:validation:MinItems=1
	UserOps []string `json:"ops,omitempty"`

	Version string `json:"version,omitempty"`
}
