# $NetBSD$
BUILDLINK_TREE+=	tslib

.if !defined(TSLIB_BUILDLINK3_MK)
TSLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tslib+=	tslib>=1.16
BUILDLINK_PKGSRCDIR.tslib?=	../../wip/tslib
.endif	# TSLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-tslib
