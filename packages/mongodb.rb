require 'package'

class Mongodb < Package
  version '3.0.4'
  source_url 'https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.0.4.tgz'
  source_sha1 '5ca5e9a393e7c47706f15e431bc7a747ba859548'

  def self.build
  end

  def self.install
    system "sudo cp -R -n bin/* #{CREW_BIN_PATH}"

    out = "#{CREW_DEST_DIR}/data/db"
    system "mkdir", out
    puts "------------------"
    puts "Installation success!"
    puts "To get started, you need to initialize a database directory"
    puts "A default database was initialized at /usr/local/data/db"
    puts "To run your database: 'mongod --dbpath /usr/local/data/db'"
    puts "Connect to database: 'mongo'"
  end
end
