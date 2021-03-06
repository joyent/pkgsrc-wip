# $NetBSD: Makefile,v 1.33 2017/08/16 20:45:39 wiz Exp $

DISTNAME=	ivtools-1.2.11
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ivtools/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://www.ivtools.org/ivtools/
COMMENT=	Drawing editors for PostScript, TeX, and web graphics

CONFLICTS+=	dclock-[0-9]*

DEPENDS+=	pstoedit>=3.0:../../graphics/pstoedit

USE_LANGUAGES=	c c++
USE_TOOLS+=	imake bash:run wget:run tar

# -lX11 not found
#DFLAGS+=	-L ${X11BASE}
#AKE_ENV+=	LDLIBX11='-lX11 -L ${X11BASE}/lib'
#DLIBX11=	-lX11 -L ${X11BASE}/lib


REPLACE_BASH+=	src/scripts/ivgetjpg.bash src/scripts/ivtiftopnm.bash

WRKSRC=		${WRKDIR}/ivtools-1.2
GNU_CONFIGURE=	YES
CONFIGURE_ARGS=	--with-tiff=${BUILDLINK_PREFIX.tiff}

SUBST_CLASSES+=		char-int
SUBST_MESSAGE.char-int=	correct char range issue
SUBST_STAGE.char-int=	pre-configure
SUBST_FILES.char-int+=	src/include/InterViews/Bitmaps/*bm
SUBST_SED.char-int+=	-e 's/char/unsigned char/'

SUBST_CLASSES+=		char
SUBST_MESSAGE.char=	correct char range issue
SUBST_STAGE.char=	pre-configure
SUBST_FILES.char+=	src/InterViews/smf_kit.c
SUBST_SED.char+=	-e 's/static char/unsigned char/'

post-patch:
	${RM} -f ${WRKSRC}/src/include/ivstd/strstream.h
	${TOUCH} ${WRKSRC}/config/dragonfly-gcc.mk

pre-install:
	${RM} -f ${WRKSRC}/config/local.def.orig
	${RM} -f ${WRKSRC}/config/params.def.orig
	${RM} -f ${WRKSRC}/config/rules.def.orig
	${RM} -f ${WRKSRC}/config/site.def.*.orig
	${RM} -f ${WRKSRC}/config/arch.def.orig

.include "../../graphics/tiff/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
