# $NetBSD: Makefile,v 1.8 2012/10/03 09:10:39 asau Exp $
#

DISTNAME=	libharu-2.2.1
CATEGORIES=	print
MASTER_SITES=	http://libharu.org/files/
LICENSE=	zlib

MAINTAINER=	esg@sdf.lonestar.org
HOMEPAGE=	http://libharu.org/
COMMENT=	Library for generating PDF files

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++

PKG_OPTIONS_VAR=	PKG_OPTIONS.libharu
PKG_SUPPORTED_OPTIONS=	png zlib
PKG_SUGGESTED_OPTIONS=	png zlib

.include "../../mk/bsd.options.mk"

# Package-specific option-handling

.if !empty(PKG_OPTIONS:Mpng)
CONFIGURE_ARGS+=	--with-png=${BUILDLINK_PREFIX.png}
.endif

.if !empty(PKG_OPTIONS:Mzlib)
CONFIGURE_ARGS+=	--with-zlib=${BUILDLINK_PREFIX.zlib}
.endif


.if !empty(PKG_OPTIONS:Mzlib)
.include "../../devel/zlib/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mpng)
.include "../../graphics/png/buildlink3.mk"
.endif

.include "../../mk/bsd.pkg.mk"
