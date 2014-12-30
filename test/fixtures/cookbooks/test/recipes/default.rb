execute 'apt-get update' if platform_family?('debian')

include_recipe 'daemontools'

package 'netcat' do
  package_name 'nc' if platform_family?('rhel', 'fedora')
end

package 'lsof' do
  package_name 'lsof' if platform_family?('rhel', 'fedora')
end

daemontools_service 'test-service' do
  directory ::File.join('/tmp', 'test-service')
  template 'test-service'
  log false
  action [:enable, :start]
end

daemontools_service 'nested-service-dir' do
  directory ::File.join('/tmp', 'subdir', 'subdir', 'nested-service-dir')
  template 'nested-service-dir'
  log false
  action [:enable, :start]
end
