# $FreeBSD: releng/10.1/sys/modules/hyperv/netvsc/Makefile 255923 2013-09-28 07:04:03Z uqs $

.PATH:  ${.CURDIR}/../../../dev/hyperv/netvsc

KMOD=	hv_netvsc
SRCS=	hv_net_vsc.c \
	hv_netvsc_drv_freebsd.c \
	hv_rndis_filter.c
SRCS+=	bus_if.h device_if.h

CFLAGS+= -I${.CURDIR}/../../../dev/hyperv/netvsc

.include <bsd.kmod.mk>
