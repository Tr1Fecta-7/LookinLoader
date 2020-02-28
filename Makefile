FINALPACKAGE=1
export TARGET = iphone:clang:latest:11.0

include $(THEOS)/makefiles/common.mk

ARCHS = arm64 arm64e

TWEAK_NAME = LookinLoader
LookinLoader_FILES = Tweak.xm
LookinLoader_CFLAGS = -fobjc-arc -Wno-deprecated-declarations


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
