# Makefile

# Check if FVM is installed
FVM_CHECK := $(shell command -v fvm 2> /dev/null)

# If FVM is installed, use it; otherwise, fallback to system Flutter
ifeq ($(strip $(FVM_CHECK)),)
	FLUTTER = flutter
else
	FLUTTER = fvm flutter
endif
ifeq ($(strip $(FVM_CHECK)),)
	DART = dart
else
	DART = fvm dart
endif


publish:
	dart pub publish