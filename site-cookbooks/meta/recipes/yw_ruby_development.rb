# DONE include_recipe "pivotal_workstation::git"
# SKIP include_recipe "pivotal_workstation::rvm"
# DONE homebrew? Pivitol's needs rewrite without bash_it

# DONE git-projects? Overide workspace dir?
# DONE ec2-tools and ENV vars (look at the second step in theres)
# DONE Chef repos 
# DONE Tools repo, symlinks to ~/bin, PATH to ~/bin
# WRITEIT Heroku toolbelt

include_recipe "sprout-osx-base::homebrew"
include_recipe "pivotal_workstation::git"
include_recipe "pivotal_workstation::git_projects"
include_recipe "yw_workstation::yw_tools"
include_recipe "yw_workstation::ec2_api_tools"
include_recipe "sprout-osx-apps::heroku_toolbelt"
