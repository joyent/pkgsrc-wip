# $NetBSD$

DISTNAME=	klausen-0.1.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=k/klausen/}

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/cmutel/klausen
COMMENT=	Parameterized model framework in Python
LICENSE=	2-clause-bsd

DEPENDS+=	${PYPKGPREFIX}-scipy>=1.6.0:../../math/py-scipy
DEPENDS+=	${PYPKGPREFIX}-stats-arrays>=0.6.4:../../wip/py-stats-arrays

BUILDLINK_API_DEPENDS.${PYPKGPREFIX}-numpy+=	${PYPKGPREFIX}-numpy>=1.8
.include "../../math/py-numpy/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
