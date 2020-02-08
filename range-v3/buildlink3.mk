# $NetBSD$

BUILDLINK_TREE+=	range-v3

.if !defined(RANGE_V3_BUILDLINK3_MK)
RANGE_V3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.range-v3+=	range-v3>=0.10.0
BUILDLINK_PKGSRCDIR.range-v3?=	../../wip/range-v3
.endif	# RANGE_V3_BUILDLINK3_MK

BUILDLINK_TREE+=	-range-v3