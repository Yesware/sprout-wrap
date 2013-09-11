install_dir = "#{node['sprout']['home']}/#{node['workspace_directory']}/ywtools"

git install_dir do
  repository "git@github-yesware:Yesware/tools.git"
  destination "#{Chef::Config[:file_cache_path]}/homebrew"
  action :sync
  notifies :run, "execute[install-tools]"
end

execute "install-tools" do
  command "install-tools"
  cwd "#{node['sprout']['home']}/#{node['workspace_directory']}/ywtools"
  user node['current_user']
  action :nothing
end
