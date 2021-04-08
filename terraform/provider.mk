# $NetBSD$
#
# This file implements common logic for Terraform providers in pkgsrc.
#
# === Package-settable variables ===
#
# TERRAFORM_PROVIDER_HOSTNAME (optional)
#
# TERRAFORM_PROVIDER_BIN
#
# TERRAFORM_PROVIDER_NAMESPACE
#
# TERRAFORM_PROVIDER_TYPE
#
# TERRAFORM_PROVIDER_VERSION
#
# TERRAFORM_PROVIDER_DIR (optional)
#
# Keywords: terraform
#

.include "../../wip/terraform/version.mk"

DEPENDS+=	${TERRAFORM_PACKAGE_DEP}

TERRAFORM_PROVIDER_HOSTNAME?=	registry.terraform.io
TERRAFORM_PROVIDER_VERSION?=	${PKGVERSION_NOREV}
TERRAFORM_PROVIDER_DIR?=	share/terraform/plugins/${TERRAFORM_PROVIDER_HOSTNAME}/${TERRAFORM_PROVIDER_NAMESPACE}/${TERRAFORM_PROVIDER_TYPE}/${TERRAFORM_PROVIDER_VERSION}/${GO_PLATFORM}

PLIST_SUBST+=		TERRAFORM_PROVIDER_HOSTNAME=${TERRAFORM_PROVIDER_HOSTNAME}
PLIST_SUBST+=		TERRAFORM_PROVIDER_NAMESPACE=${TERRAFORM_PROVIDER_NAMESPACE}
PLIST_SUBST+=		TERRAFORM_PROVIDER_TYPE=${TERRAFORM_PROVIDER_TYPE}
PLIST_SUBST+=		TERRAFORM_PROVIDER_VERSION=${TERRAFORM_PROVIDER_VERSION}

PRINT_PLIST_AWK+=	{ sub("${TERRAFORM_PROVIDER_HOSTNAME}", "$${TERRAFORM_PROVIDER_HOSTNAME}") }
PRINT_PLIST_AWK+=	{ sub("${TERRAFORM_PROVIDER_NAMESPACE}", "$${TERRAFORM_PROVIDER_NAMESPACE}") }
PRINT_PLIST_AWK+=	{ sub("${TERRAFORM_PROVIDER_TYPE}", "$${TERRAFORM_PROVIDER_TYPE}") }
PRINT_PLIST_AWK+=	{ sub("${TERRAFORM_PROVIDER_VERSION}", "$${TERRAFORM_PROVIDER_VERSION}") }

#
# TODO: overwrite do-install: target so it DTRT both for go-module.mk packages
# TODO: and go-packages.mk packages.  This can be probably done by checking for
# TODO: both existence of TERRAFORM_PROVIDER_BIN in .gopath/bin and bin and copy
# TODO: what is found.  Currently, for all packaged providers, this is probably
# TODO: good enough but if there is any exception we can probably adjust that
# TODO: via pre-install:/post-install: too.
#
