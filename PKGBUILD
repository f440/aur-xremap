# Maintainer: f440 <freq440@gmail.com>

pkgname=xremap
pkgver=0.0.3
pkgrel=1
pkgdesc="Dynamic key remapper for X Window System"
arch=('i686' 'x86_64')
url='https://github.com/k0kubun/xremap'
license=('MIT')
depends=('libx11')
makedepends=('git' 'ruby')
provides=('xremap')
conflicts=()

# source=("https://github.com/k0kubun/xremap/archive/v${pkgver}.tar.gz")
# sha1sums=('1a2174a592b2a3cff20385936b1b3d33056bbe4c')
source=(
  "xremap-$pkgver::git+https://github.com/k0kubun/xremap.git"
  "xremap.service"
)
md5sums=(
  'SKIP'
  'SKIP'
)

build() {
  cd "${pkgname}-${pkgver}"
  make
}

package() {
  install -Dm644 "${srcdir}/xremap.service" "${pkgdir}//usr/lib/systemd/user/xremap.service"

  cd "${pkgname}-${pkgver}"
  install -Dm644 "LICENSE" "${pkgdir}/usr/share/licenses/xremap/LICENSE"
  install -Dm755 "xremap" "${pkgdir}/usr/bin/xremap"
  mkdir -p -m 755 "${pkgdir}/usr/share/xremap"
  cp -r examples "${pkgdir}/usr/share/xremap/examples"
}
