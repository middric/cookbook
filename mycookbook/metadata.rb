name              "nodejs"
maintainer        "Rich Middleditch"
maintainer_email  "richmiddleditch@gmail.com"
license           "MIT"
description       "Installs and configures node.js"
version           "0.0.1"
depends          'build-essential', '~> 1.4.0'

recipe "nodejs", "Installs nginx package and sets up configuration with Debian apache style with sites-enabled/sites-available"

%w{ ubuntu debian centos redhat amazon scientific oracle fedora }.each do |os|
 supports os
end
