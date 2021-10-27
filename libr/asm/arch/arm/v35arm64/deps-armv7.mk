
V35ARMV7_ARCH?=arch-armv7
V35ARMV7_SRCDIR=$(V35ARM64_HOME)/$(V35ARMV7_ARCH)/armv7_disasm/

V35ARMV7_CFLAGS=-I$(V35ARMV7_SRCDIR)

V35ARMV7_OBJS+=armv7.c
V35ARMV7_LINK=$(addprefix $(V35ARMV7_SRCDIR),$(V35ARMV7_OBJS))
V35ARMV7_LIBS=$(V35ARM64_HOME)/armv7dis.a

${V35ARMV7_LINK}: $(V35ARMV7_SRCDIR)

$(V35ARMV7_SRCDIR):
	$(MAKE) $(V35ARM64_HOME)/armv7dis.a

git-clone-armv7v35: # $(V35ARM64_HOME)/armv7dis.a:
	$(MAKE) -C $(V35ARM64_HOME) arch-armv7

.PHONY: git-clone-armv7v35
