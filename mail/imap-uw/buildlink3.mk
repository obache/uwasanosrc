# $NetBSD: buildlink3.mk,v 1.24 2020/12/04 04:56:00 riastradh Exp $

BUILDLINK_TREE+=	imap-uw

.if !defined(IMAP_UW_BUILDLINK3_MK)
IMAP_UW_BUILDLINK3_MK:=

.include "../../mk/bsd.fast.prefs.mk"

BUILDLINK_API_DEPENDS.imap-uw+=	imap-uw>=2007dnb1
BUILDLINK_ABI_DEPENDS.imap-uw+=	imap-uw>=2007fnb9
BUILDLINK_PKGSRCDIR.imap-uw?=	../../mail/imap-uw
.if ${OPSYS} == "Darwin"
BUILDLINK_LDFLAGS.imap-uw+=	-flat_namespace
.endif

.include "../../security/openssl/buildlink3.mk"
.endif # IMAP_UW_BUILDLINK3_MK

BUILDLINK_TREE+=	-imap-uw
