# DONE include_recipe "pivotal_workstation::git"
# SKIP include_recipe "pivotal_workstation::rvm"
# SKIP homebrew? Pivitol's needs rewrite without bash_it

# DOIT git-projects? Overide workspace dir?
# DOIT ec2-tools and ENV vars (look at the second step in theres)
# DONE Chef repos 
# WRITEIT Tools repo, symlinks to ~/bin, PATH to ~/bin
# WRITEIT Heroku toolbelt

include_recipe "pivotal_workstation::git_projects"
include_recipe "yw_workstation::yw_tools"
