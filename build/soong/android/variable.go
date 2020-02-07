package android
type Product_variables struct {
	Needs_text_relocations struct {
		Cppflags []string
	}
	Uses_qcom_bsp_legacy struct {
		Cppflags []string
	}
	Should_wait_for_qsee struct {
		Cflags []string
	}
	Supports_extended_compress_format struct {
		Cflags []string
	}
	Supports_hw_fde struct {
		Cflags []string
		Header_libs []string
		Shared_libs []string
	}
	Supports_hw_fde_perf struct {
		Cflags []string
	}
	Target_uses_eigen struct {
		Shared_libs []string
		Required []string
	}
	Target_init_vendor_lib struct {
		Whole_static_libs []string
	}
	Target_uses_qml struct {
		Cflags []string
		Shared_libs []string
		Header_libs []string
		Required []string
	}
	Uses_generic_camera_parameter_library struct {
		Srcs []string
	}
	Uses_qti_camera_device struct {
		Cppflags []string
		Shared_libs []string
	}
	Additional_gralloc_10_usage_bits struct {
		Cppflags []string
	}
	Bootloader_message_offset struct {
		Cflags []string
	}
	Target_process_sdk_version_override struct {
		Cppflags []string
	}
	Target_shim_libs struct {
		Cppflags []string
	}
	Uses_qcom_um_family struct {
		Cflags []string
		Srcs []string
		Shared_libs []string
	}
	Uses_qcom_um_3_18_family struct {
		Include_dirs []string
		Header_libs []string
		Shared_libs []string
	}
	Uses_qcom_um_4_4_family struct {
		Include_dirs []string
		Header_libs []string
		Shared_libs []string
	}
	Uses_qcom_um_4_9_family struct {
		Include_dirs []string
		Header_libs []string
		Shared_libs []string
	}
	Uses_qcom_um_4_14_family struct {
		Include_dirs []string
		Header_libs []string
		Shared_libs []string
	}
	Has_legacy_camera_hal1 struct {
		Cflags []string
		Overrides []string
		Shared_libs []string
	}
}

type ProductVariables struct {
	Needs_text_relocations					*bool `json:",omitempty"`
	Uses_qcom_bsp_legacy					*bool `json:",omitempty"`
	Should_wait_for_qsee					*bool `json:",omitempty"`
	Supports_hw_fde							*bool `json:",omitempty"`
	Supports_hw_fde_perf					*bool `json:",omitempty"`
	Target_init_vendor_lib					*string `json:",omitempty"`
	Target_uses_eigen						*bool `json:",omitempty"`
	Target_uses_qml							*bool `json:",omitempty"`
	Uses_generic_camera_parameter_library	*bool `json:",omitempty"`
	Uses_qti_camera_device					*bool `json:",omitempty"`
	Additional_gralloc_10_usage_bits		*string `json:",omitempty"`
	Bootloader_message_offset				*int `json:",omitempty"`
	Java_Source_Overlays					*string `json:",omitempty"`
	QTIAudioPath							*string `json:",omitempty"`
	QTIDisplayPath							*string `json:",omitempty"`
	QTIMediaPath							*string `json:",omitempty"`
	Specific_camera_parameter_library		*string `json:",omitempty"`
	Target_process_sdk_version_override		*string `json:",omitempty"`
	Target_shim_libs						*string `json:",omitempty"`
	Uses_qcom_um_family						*bool `json:",omitempty"`
	Uses_qcom_um_3_18_family				*bool `json:",omitempty"`
	Uses_qcom_um_4_4_family					*bool `json:",omitempty"`
	Uses_qcom_um_4_9_family					*bool `json:",omitempty"`
	Uses_qcom_um_4_14_family				*bool `json:",omitempty"`
	Has_legacy_camera_hal1					*bool `json:",omitempty"`
	Supports_extended_compress_format		*bool `json:",omitempty"`
}
