TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = MobileStore StoreKitUIService

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = itmsxssblock

itmsxssblock_FILES = Tweak.x
itmsxssblock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
