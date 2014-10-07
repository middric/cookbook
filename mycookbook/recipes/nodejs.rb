case node['platform_family']
  when 'rhel','fedora'
    package "openssl-devel"
  when 'debian'
    package "libssl-dev"
end

# Let the user override the source url in the attributes
nodejs_src_url = "#{node['nodejs']['src_url']}/#{node['nodejs']['version']}"

remote_file "/usr/local/src/#{node['nodejs']['version']}" do
  source nodejs_src_url
  mode 0777
  action :create_if_missing
end

cookbook_file "/usr/local/src/#{node['nodejs']['version']}" do
    source "#{node['nodejs']['version']}"
    owner "root"
    group "root"
    mode "0444"
end
