require 'package'

class Xmlparser < Package
  version '2.36.0'
  source_url 'http://search.cpan.org/CPAN/authors/id/M/MS/MSERGEANT/XML-Parser-2.36.tar.gz'
  source_sha1 '74acac4f939ebf788d8ef5163cbc9802b1b04bfa'

  depends_on 'perl'

  def self.build
    system "perl Makefil.PL PREFIX=/usr/local INSTALLDIRS=#{CREW_DEST_DIR}"
    system "make"
  end

  def self.install
    system "make install"
  end
end
