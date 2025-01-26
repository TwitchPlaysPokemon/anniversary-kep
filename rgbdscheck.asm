IF !DEF(__RGBDS_MAJOR__) || !DEF(__RGBDS_MINOR__) || !DEF(__RGBDS_PATCH__)
	fail "KEP requires rgbds v0.6.0."
ENDC
IF __RGBDS_MAJOR__ == 0 && __RGBDS_MINOR__ != 6
	fail "KEP requires rgbds v0.6.0."
ENDC
