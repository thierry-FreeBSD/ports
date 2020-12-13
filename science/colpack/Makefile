# Created by: thierry@pompo.net
# $FreeBSD$

PORTNAME=	ColPack
PORTVERSION=	1.0.10
DISTVERSIONPREFIX=	v
CATEGORIES=	science

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Graph Coloring Algorithm Package

LICENSE=	LGPL3 GPLv3
LICENSE_COMB=	dual

USE_GITHUB=	yes
GH_ACCOUNT=	CSCsw

USES=		autoreconf libtool
GNU_CONFIGURE=	yes
USE_LDECONFIG=	yes
TEST_TARGET=	check

OPTIONS_DEFINE=		EXAMPLES
OPTIONS_DEFAULT=	EXAMPLES
OPTIONS_SUB=		yes

EXAMPLES_CONFIGURE_ENABLE=	examples

pre-configure:
	${REINPLACE_CMD} -e 's| -O3||;s|$${prefix}/examples|${EXAMPLESDIR}|'	\
		${WRKSRC}/Makefile.am

post-install-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}/Graphs
	${INSTALL_DATA} ${WRKSRC}/Graphs/* ${STAGEDIR}${EXAMPLESDIR}/Graphs

.include <bsd.port.mk>
