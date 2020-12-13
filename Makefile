# Created by: thierry@pompo.net
# $FreeBSD$

PORTNAME=	AMReX
PORTVERSION=	20.12
CATEGORIES=	science

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Software Framework for Block Structured AMR

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libmpi.so:net/mpich

USE_GITHUB=	yes
GH_ACCOUNT=	AMReX-Codes
GH_PROJECT=	${PORTNAME:tl}

USES=		cmake:run fortran perl5 python:run shebangfix
SHEBANG_FILES=	Tools/typechecker/typechecker.py	\
		Tools/C_scripts/describe_sources.py	\
		Tools/C_scripts/makebuildinfo_C.py	\
		Tools/C_scripts/mkdep
USE_PERL5=	run
USE_LDECONFIG=	yes
TEST_TARGET=	check

OPTIONS_DEFINE=		EXAMPLES
OPTIONS_DEFAULT=	EXAMPLES
OPTIONS_SUB=		yes

CMAKE_ARGS=	-DMPIEXEC_EXECUTABLE=${LOCALBASE}/bin/mpiexec

.include <bsd.port.mk>
