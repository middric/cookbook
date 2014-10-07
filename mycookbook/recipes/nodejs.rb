case node['platform_family']
  when 'rhel','fedora'
    package "openssl-devel"
  when 'debian'
    package "libssl-dev"
end

# Let the user override the source url in the attributes
nodejs_src_url = "#{node['nodejs']['src_url']}/#{node['nodejs']['version']}"

remote_file "/tmp/#{node['nodejs']['version']}" do
  source nodejs_src_url
  mode 0644
  action :create_if_missing
end

dpkg_package "nodejs" do
    source "/tmp/#{node['nodejs']['version']}"
    action :install
end
