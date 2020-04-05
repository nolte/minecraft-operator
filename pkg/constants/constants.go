package constants

const (
	// OperatorName is a operator name
	OperatorName          = "minecraft-operator"
	MinecraftDefaultImage = "itzg/minecraft-server:latest"

	DefaultGamePortInt32 = int32(25565)
	DefaultGamePortName  = "game"

	DefaultRconPortInt32 = int32(25575)
	DefaultRconPortName  = "rcon"

	// https://github.com/sladkoff/minecraft-prometheus-exporter
	DefaultMetricsPortInt32 = int32(9225)
	DefaultMetricsPortName  = "metrics"
)
