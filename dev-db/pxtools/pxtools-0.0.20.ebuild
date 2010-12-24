# Distributed under the terms of the GNU General Public License v2

#inherit eutils
EAPI="2"

DESCRIPTION="Set of tools to convert a Paradox-database into a SQL-database (MySQL, PostgreSQL), CSV or XML."
HOMEPAGE="http://jan.kneschke.de/projects/pxtools/"
SRC_URI="http://jan.kneschke.de/assets/2007/2/16/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 s390 sh x86"
IUSE=""

DEPEND=""

src_unpack() {
	unpack ${A}
	cd "${S}"
}

src_configure() {
	econf || die
}

src_compile() {
	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die "Installer failed"
}
