#$FreeBSD: releng/10.1/sys/modules/igb/Makefile 253303 2013-07-12 22:36:26Z jfv $

.include <bsd.own.mk>

.PATH:  ${.CURDIR}/../../dev/e1000
KMOD    = if_igb
SRCS    = device_if.h bus_if.h pci_if.h opt_inet.h opt_inet6.h
SRCS    += if_igb.c $(SHARED_SRCS)
SHARED_SRCS = e1000_api.c e1000_phy.c e1000_nvm.c e1000_mac.c e1000_manage.c
SHARED_SRCS += e1000_80003es2lan.c e1000_82542.c e1000_82541.c e1000_82543.c
SHARED_SRCS += e1000_82540.c e1000_ich8lan.c e1000_82571.c e1000_osdep.c
SHARED_SRCS += e1000_82575.c e1000_vf.c e1000_mbx.c e1000_i210.c

CFLAGS += -I${.CURDIR}/../../dev/e1000 -DSMP

# DEVICE_POLLING gives you non-interrupt handling
# not advisable since MSIX gives better results
#CFLAGS  += -DDEVICE_POLLING

# IGB_LEGACY_TX will override the stack if_transmit path and
# instead use the older if_start non-multiqueue capable interface.
# This might be desireable for testing, or to enable the use of
# ALTQ. 
#CFLAGS  += -DIGB_LEGACY_TX

.if !defined(KERNBUILDDIR)
.if ${MK_INET_SUPPORT} != "no"
opt_inet.h:
	@echo "#define INET 1" > ${.TARGET}
.endif

.if ${MK_INET6_SUPPORT} != "no"
opt_inet6.h:
	@echo "#define INET6 1" > ${.TARGET}
.endif
.endif

.include <bsd.kmod.mk>
