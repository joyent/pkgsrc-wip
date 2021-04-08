# $NetBSD$

BUILDLINK_TREE+=	akonadi-contacts

.if !defined(AKONADI_CONTACTS_BUILDLINK3_MK)
AKONADI_CONTACTS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.akonadi-contacts+=	akonadi-contacts>=17.12.1
BUILDLINK_PKGSRCDIR.akonadi-contacts?=		../../wip/akonadi-contacts

.include "../../wip/akonadi-mime/buildlink3.mk"
.include "../../wip/grantleetheme/buildlink3.mk"
.include "../../wip/libkleo/buildlink3.mk"
.include "../../misc/kcontacts/buildlink3.mk"
.include "../../mail/kmime/buildlink3.mk"
.include "../../graphics/prison/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# AKONADI_CONTACTS_BUILDLINK3_MK

BUILDLINK_TREE+=	-akonadi-contacts
