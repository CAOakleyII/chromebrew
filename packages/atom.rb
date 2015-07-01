require 'package'

class Atom < Package
  version '1.0.0'
  source_url 'https://github.com/atom/atom/archive/v1.0.0.tar.gz'
  source_sha1 '66fab6125ccf2feb2316dd92686ff7c0f96a9780'

  depends_on 'gcc'
  depends_on 'buildessential'
  depends_on 'nodejs'

  def self.build
    system "script/build"
  end

  def self.install
    system "sudo script/grunt install --install-dir #{CREW_DEST_DIR}"
  end
end
