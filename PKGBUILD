# Maintainer: Félix "passcod" Saparelli <aur@passcod.name>
# Contributor: Matthieu "CircleCode" Codron <codronm+circlecode@gmail.com>
# Contributor: Niklas Heer <niklas.heer@gmail.com>
pkgname=hub-bin
pkgver=2.2.3
pkgrel=1
pkgdesc="hub helps you win at git. Go-powered version"
arch=('i686' 'x86_64')
url="https://hub.github.com"
license=('MIT')
conflicts=('hub' 'hub-git')
_arch=amd64  # Workaround for mkaurball: https://bugs.archlinux.org/task/40711
[[ $CARCH = i686 ]] && _arch=386
source=("hub-linux-${_arch}-${pkgver}.tar.gz::https://github.com/github/hub/releases/download/v${pkgver}/hub-linux-${_arch}-${pkgver}.tgz")
sha512sums=('33725fa43bcdeda71de6fb1bf4322fce24dc3854218635758e2462566cfa487e2b5bcd4fa79a4b145fb3b7bded1664065dd2b20efac11341ca2b24cdd61ef712')
[[ $CARCH = i686 ]] && sha512sums=('dcba7563b5635f3d914e97fa8c3291983ae5ed70b6cd4232f9894d27d7387e12d4bad67ecb075fed6ede4af352a41c54983862d21640b1ccaff1340578bfcefd')
install='hub-bin.install'
package() {
  cd $srcdir/hub-linux-${_arch}-${pkgver}
  prefix="$pkgdir/usr" ./install
  install -Dm644 {etc/,$pkgdir/usr/share/git/completion/}hub.bash_completion.sh
  install -Dm644 {,$pkgdir/usr/share/licenses/hub/}LICENSE
  install -Dm644 etc/hub.zsh_completion "$pkgdir/usr/local/share/zsh/site-functions/_hub"
}
