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
source_x86_64=("hub-linux-amd64-${pkgver}.tar.gz::https://github.com/github/hub/releases/download/v${pkgver}/hub-linux-amd64-${pkgver}.tgz")
source_i686=("hub-linux-386-${pkgver}.tar.gz::https://github.com/github/hub/releases/download/v${pkgver}/hub-linux-386-${pkgver}.tgz")
md5sums_i686=('b087f0a018fa69f434c92d41e158626d')
md5sums_x86_64=('7d33b611d2b1633fd4969776b34ae736')
install='hub-bin.install'
package() {
  cd $srcdir/hub-linux-${_arch}-${pkgver}
  prefix="$pkgdir/usr" ./install
  install -Dm644 {etc/,$pkgdir/usr/share/git/completion/}hub.bash_completion.sh
  install -Dm644 {,$pkgdir/usr/share/licenses/hub/}LICENSE
  install -Dm644 etc/hub.zsh_completion "$pkgdir/usr/local/share/zsh/site-functions/_hub"
}
