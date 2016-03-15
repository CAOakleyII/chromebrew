require 'package'

class Intltool < Package
  version '0.51.0'
  source_url 'https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz'
  source_sha1 'a0c3bcb99d1bcfc5db70f8d848232a47c47da090'

  depends_on 'xmlparser'

  def self.build
    system "perl -e shell -MCPAN"
    system "yes"
    system "local::user"
    system "yes"
    system "install XML::Parser"
    system "./configure"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
