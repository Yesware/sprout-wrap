install_dir = "#{node['sprout']['home']}/#{node['workspace_directory']}/ywtools"

git install_dir do
  repository "git@github-yesware:Yesware/tools.git"
  user node['current_user']
  action :sync
  notifies :run, "execute[install-tools]"
end

directory "#{node['sprout']['home']}/bin" do
  user node['current_user']
end

execute "install-tools" do
  command "./install-tools"
  cwd install_dir 
  user node['current_user']
  action :nothing
end
