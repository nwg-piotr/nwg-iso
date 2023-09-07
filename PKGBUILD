# Maintainer: Piotr Miller <nwg.piotr@gmail.com>
pkgname=('nwg-os-installer')
pkgver=0.0.1
pkgrel=1
pkgdesc="nwg-shell installer for the nwg-os iso"
arch=('x86_64')
url="https://github.com/nwg-piotr/nwg-os-installer"
license=('MIT')
provides=('nwg-os-installer')
source=("https://raw.githubusercontent.com/nwg-piotr/nwg-os-installer/master/install-shell"
        "https://raw.githubusercontent.com/nwg-piotr/nwg-os-installer/master/rc.local")

md5sums=('SKIP'
         'SKIP')

package() {
  install -D -m 755 install-shell "$pkgdir/usr/local/bin/install-shell"
  install -D -m 755 rc.local "${pkgdir}/etc/rc.local"
}
