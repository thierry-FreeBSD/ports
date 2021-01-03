# Created by: thierry@pompo.net
# $FreeBSD$

PORTNAME=	sphinxbootstrap4theme
PORTVERSION=	0.6.0.20190410
CATEGORIES=	textproc python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Sphinx Bootstrap4 Theme

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sphinx>=0:textproc/py-sphinx@${PY_FLAVOR}

USE_GITHUB=	yes
GH_ACCOUNT=	myyasuda
GH_TAGNAME=	0dbe1d6

USES=		python:3.7+
USE_PYTHON=	distutils

NO_ARCH=	yes

OPTIONS_DEFINE=		EXAMPLES
PORTEXAMPLES=		*

post-build-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${CP} -R ${WRKSRC}/example ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
