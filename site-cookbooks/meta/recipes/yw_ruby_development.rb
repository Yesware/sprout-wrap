include_recipe "sprout-osx-base::homebrew"
include_recipe "pivotal_workstation::git"
include_recipe "pivotal_workstation::git_projects"
include_recipe "yw_workstation::yw_tools"
include_recipe "yw_workstation::ec2_api_tools"
include_recipe "sprout-osx-apps::heroku_toolbelt"
