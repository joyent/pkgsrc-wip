# $NetBSD: buildlink3.mk,v 1.2 2020/03/08 16:47:59 wiz Exp $

BUILDLINK_TREE+=	gstreamer1

.if !defined(GSTREAMER1_BUILDLINK3_MK)
GSTREAMER1_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gstreamer1+=	gstreamer1>=1.18.4
BUILDLINK_PKGSRCDIR.gstreamer1?=	../../wip/gstreamer1

pkgbase := gstreamer1
.include "../../mk/pkg-build-options.mk"

.if ${PKG_BUILD_OPTIONS.gstreamer1:Mgstcheck}
.include "../../devel/check/buildlink3.mk"
.endif

.include "../../devel/glib2/buildlink3.mk"
.endif # GSTREAMER1_BUILDLINK3_MK

BUILDLINK_TREE+=	-gstreamer1
