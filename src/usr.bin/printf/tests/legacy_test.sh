#!/bin/sh
# $FreeBSD: releng/10.1/usr.bin/printf/tests/legacy_test.sh 263227 2014-03-16 08:04:06Z jmmv $

SRCDIR="$(dirname "${0}")"; export SRCDIR

m4 "${SRCDIR}/../regress.m4" "${SRCDIR}/regress.sh" | sh
