# $FreeBSD: releng/10.1/sys/modules/bktr/bktr_mem/Makefile 160063 2006-07-01 10:51:55Z markm $

.PATH: ${.CURDIR}/../../../dev/bktr

KMOD=	bktr_mem 
SRCS=	bktr_mem.c
EXPORT_SYMS=	bktr_has_stored_addresses	\
		bktr_store_address		\
		bktr_retrieve_address

.include <bsd.kmod.mk>
