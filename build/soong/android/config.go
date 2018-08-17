package android

// Global config used by Lineage soong additions
var CarbonConfig = struct {
	// List of packages that are permitted
	// for java source overlays.
	JavaSourceOverlayModuleWhitelist []string
}{
	// JavaSourceOverlayModuleWhitelist
	[]string{
		"org.carbon.hardware",
	},
}
