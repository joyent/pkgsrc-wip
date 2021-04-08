# $NetBSD$

BUILDLINK_TREE+=	libXaw3dXft

.if !defined(LIBXAW3DXFT_BUILDLINK3_MK)
LIBXAW3DXFT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libXaw3dXft+=	libXaw3dXft>=1.6.2h
BUILDLINK_PKGSRCDIR.libXaw3dXft?=	../../wip/libXaw3dXft

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.endif	# LIBXAW3DXFT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libXaw3dXft
