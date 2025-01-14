LOCAL_DIR := $(GET_LOCAL_DIR)
#$(warning LOCAL_DIR $(LOCAL_DIR))

APP_NAME := hello
APP_BUILDDIR := $(call TOBUILDDIR, $(LOCAL_DIR))
APP := $(APP_BUILDDIR)/$(APP_NAME)

APP_LIBS := $(call TOBUILDDIR, lib/empty/empty.a)
APP_LIBS += $(call TOBUILDDIR, lib/lku/lku.a)

#$(warning APP_NAME = $(APP_NAME))
#$(warning APP_BUILDDIR = $(APP_BUILDDIR))
#$(warning APP = $(APP))

APP_CFLAGS :=
APP_SRCS := $(LOCAL_DIR)/hello.c

include make/app.mk
