# $FreeBSD: releng/10.1/usr.sbin/unbound/daemon/Makefile 255597 2013-09-15 14:51:23Z des $

# Vendor sources and generated files
LDNSDIR= ${.CURDIR}/../../../contrib/ldns
UNBOUNDDIR= ${.CURDIR}/../../../contrib/unbound

.PATH: ${UNBOUNDDIR} ${UNBOUNDDIR}/daemon ${UNBOUNDDIR}/doc

PROG=	unbound
SRCS=	acl_list.c cachedump.c daemon.c remote.c stats.c unbound.c worker.c
CFLAGS=	-I${UNBOUNDDIR} -I${LDNSDIR}
DPADD=	${LIBUNBOUND} ${LIBLDNS} ${LIBUTIL} ${LIBSSL} ${LIBCRYPTO} ${LIBPTHREAD}
LDADD=	-lunbound -lldns -lutil -lssl -lcrypto -lpthread
USEPRIVATELIB=	ldns
MAN=	unbound.8 unbound.conf.5

.include <bsd.prog.mk>
