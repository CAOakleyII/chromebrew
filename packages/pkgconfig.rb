require 'package'

class Pkgconfig < Package
  version '0.22.0'
  source_url 'http://pkgconfig.freedesktop.org/releases/pkg-config-0.22.tar.gz'
  source_sha1 '3ec40bda9864d7aa3c912c6ae87a750fd8b6e420'

  depends_on 'buildessential'

  def self.build
    system "./configure --prefix=/usr"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
