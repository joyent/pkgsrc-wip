# $NetBSD$

DISTNAME=	uplatex
PKGNAME=	tex-${DISTNAME}-2020
TEXLIVE_REV=	57186

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ctan.org/pkg/uplatex
COMMENT=	pLaTeX2e and miscellaneous macros for upTeX
LICENSE=	modified-bsd

DEPENDS+=	tex-atbegshi-[0-9]*:../../print/tex-atbegshi
DEPENDS+=	tex-atveryend-[0-9]*:../../print/tex-atveryend
DEPENDS+=	tex-babel-[0-9]*:../../print/tex-babel
DEPENDS+=	tex-cm-[0-9]*:../../fonts/tex-cm
DEPENDS+=	tex-everyshi-[0-9]*:../../wip/tex-everyshi
DEPENDS+=	tex-firstaid-[0-9]*:../../wip/tex-firstaid
DEPENDS+=	tex-hyphen-base-[0-9]*:../../print/tex-hyphen-base
DEPENDS+=	tex-l3backend-[0-9]*:../../devel/tex-l3backend
DEPENDS+=	tex-l3kernel-[0-9]*:../../devel/tex-l3kernel
DEPENDS+=	tex-l3packages-[0-9]*:../../devel/tex-l3packages
DEPENDS+=	tex-latex-[0-9]*:../../print/tex-latex
DEPENDS+=	tex-latex-base-dev-[0-9]*:../../print/tex-latex-base-dev
DEPENDS+=	tex-latex-fonts-[0-9]*:../../fonts/tex-latex-fonts
DEPENDS+=	tex-platex-[0-9]*:../../print/tex-platex
DEPENDS+=	tex-tex-ini-files-[0-9]*:../../print/tex-tex-ini-files
DEPENDS+=	tex-unicode-data-[0-9]*:../../print/tex-unicode-data
DEPENDS+=	tex-uptex-[0-9]*:../../wip/tex-uptex
DEPENDS+=	tex-uptex-fonts-[0-9]*:../../wip/tex-uptex-fonts

INSTALLATION_DIRS+=	bin

TEX_FORMATS+=	"uplatex euptex language.dat *uplatex.ini\\nuplatex-dev euptex language.dat *uplatex.ini\\n"

post-install:
	${LN} -sf euptex ${DESTDIR}${PREFIX}/bin/uplatex
	${LN} -sf euptex ${DESTDIR}${PREFIX}/bin/uplatex-dev

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
