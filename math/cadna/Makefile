# Created by: thierry@pompo.net
# $FreeBSD$

PORTNAME=	CADNA
DISTVERSION=	3.1.10
CATEGORIES=	math devel
MASTER_SITES=	https://www-pequan.lip6.fr/cadna/Download_Dir/
DISTNAME=	${PORTNAME:tl}_c-${DISTVERSION}

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Control of Accuracy and Debugging for Numerical Applications

LICENSE=	LGPL3 GPLv3
LICENSE_COMB=	multi

BUILD_DEPENDS=	bash:shells/bash
LIB_DEPENDS=	libmpi.so:net/mpich

USES=		fortran

GNU_CONFIGURE=	yes
CONFIGURE_SHELL=${LOCALBASE}/bin/bash
CONFIGURE_ARGS=	--enable-fortran
TEST_TARGET=	check

EXDIR=	examplesC examplesC_mpi examplesFortran examplesFortran_mpi
EXKO=	examplesC_mpiomp examplesC_omp

# You should not compile CADNA in parallel because of the dependencies between CADNA source files.
MAKE_JOBS_UNSAFE=yes

.if defined(MAINTAINER_MODE)
regression-test:	install
. for ex in ${EXDIR}
	(cd ${BUILD_WRKSRC}/${ex} && ${DO_MAKE_BUILD} ${ALL_TARGET})
. endfor
.endif

.include <bsd.port.mk>
